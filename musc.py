#!/usr/bin/env python3

import os
import sys
import subprocess
import shlex
from os import path
from typing import *
from enum import Enum, auto

debug=False

register_counter=0

def register(reset: bool=False) -> int:
    global register_counter
    if reset:
        register_counter = 0
    result = register_counter
    register_counter += 1
    return result

Loc=Tuple[str, int, int]

OpType=int

OP_PUSH_INT=register(True)
OP_PUSH_STR=register()
OP_PLUS=register()
OP_MINUS=register()
OP_MOD=register()
OP_EQ=register()
OP_GT=register()
OP_LT=register()
OP_GE=register()
OP_LE=register()
OP_NE=register()
OP_RSH=register()
OP_LSH=register()
OP_BOR=register()
OP_BAND=register()
OP_FMT=register()
OP_IF=register()
OP_END=register()
OP_ELSE=register()
OP_DUPL=register()
OP_2DUPL=register()
OP_SWAP=register()
OP_DROP=register()
OP_OVER=register()
OP_WHILE=register()
OP_DO=register()
OP_MEM=register()
OP_LOAD=register()
OP_STORE=register()
OP_SYSCALL0=register()
OP_SYSCALL1=register()
OP_SYSCALL2=register()
OP_SYSCALL3=register()
OP_SYSCALL4=register()
OP_SYSCALL5=register()
OP_SYSCALL6=register()
COUNT_OPS=register()

# Op is a dict with the following possible fields:
# - 'type' -- the type of the Op. One of OP_PUSH_INT, OP_PUSH_STR, OP_PLUS, OP_MINUS, etc, defined bellow
# - 'loc' -- location of the Op within a file. It's a tuple of 3 elements: `(file_path, row, col)`. `row` and `col` are 1-based indices.
# - 'value' -- optional field. Exists only for OP_PUSH_INT, OP_PUSH_STR. Contains the value that needs to be pushed onto the stack.
# - 'jmp' -- optional field. Exists only for block Ops like `if`, `else`, `while`, etc. Contains an index of an Op within the Program that the execution has to jump to depending on the circumstantces. In case of `if` it's the place of else branch, in case of `else` it's the end of the construction, etc. The field is created during crossreference_blocks() step.
Op=Dict[str, Union[OpType, int, str, Loc]]

class TokenType(Enum):
    WORD=auto()
    INT=auto()
    STR=auto()

# Token is a dict with the following possible fields:
# - `type` - type of the Token. One of TOKEN_WORD, TOKEN_INT, etc. defined bellow
# - `loc` - location of the Token within a file. It's a tuple of 3 elements: `(file_path, row, col)`. `row` and `col` are 1-based indices.
# - `value` - the value of the token depending on the type of the Token. For TOKEN_WORD it's `str`, for TOKEN_INT it's `int`.
Token=Dict[str, Union[TokenType, int, str, Loc]]

STR_CAPACITY = 640_000
MEM_CAPACITY = 640_000


def simulate_little_endian_linux(program: List[Op]) -> None:
    stack = []
    mem = bytearray(STR_CAPACITY + MEM_CAPACITY)
    str_offsets = {}
    str_size = 0
    ip = 0
    while ip < len(program):
        assert COUNT_OPS == 36, "Exhaustive handling of operations in simulation"
        op = program[ip]
        if op['type'] == OP_PUSH_INT:
            stack.append(op['value'])
            ip += 1
        elif op['type'] == OP_PUSH_STR:
            bs = bytes(op['value'], 'utf-8')
            n = len(bs)
            stack.append(n)
            if ip not in str_offsets:
                str_offsets[ip] = str_size
                mem[str_size:str_size+n] = bs
                str_size += n
                assert str_size <= STR_CAPACITY, "String buffer overflow"
            stack.append(str_offsets[ip])
            ip += 1
        elif op['type'] == OP_PLUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(a + b)
            ip += 1
        elif op['type'] == OP_MINUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(b - a)
            ip += 1
        elif op['type'] == OP_MOD:
            a = stack.pop()
            b = stack.pop()
            stack.append(b % a)
            ip += 1
        elif op['type'] == OP_EQ:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(a == b))
            ip += 1
        elif op['type'] == OP_GT:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(a < b))
            ip += 1
        elif op['type'] == OP_LT:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(a > b))
            ip += 1
        elif op['type'] == OP_GE:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(b >= a))
            ip += 1
        elif op['type'] == OP_LE:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(b <= a))
            ip += 1
        elif op['type'] == OP_NE:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(b != a))
            ip += 1
        elif op['type'] == OP_RSH:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(b >> a))
            ip += 1
        elif op['type'] == OP_LSH:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(b << a))
            ip += 1
        elif op['type'] == OP_BOR:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(a | b))
            ip += 1
        elif op['type'] == OP_BAND:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(a & b))
            ip += 1
        elif op['type'] == OP_IF:
            a = stack.pop()
            if a == 0:
                assert 'jmp' in op, "'if' instruction does not have a reference to the end of its block. Please call crossreference_blocks() on the program before trying to simulate it"
                ip = op['jmp']
            else:
                ip += 1
        elif op['type'] == OP_ELSE:
            assert 'jmp' in op, "'else' instruction does not have a reference to the end of its block. Please call crossreference_blocks() on the program before trying to simulate it"
            ip = op['jmp']
        elif op['type'] == OP_END:
            assert 'jmp' in op, "'end' instruction does not have a reference to the next instruction to jump to. Please call crossreference_blocks() on the program before trying to simulate it"
            ip = op['jmp']
        elif op['type'] == OP_FMT:
            a = stack.pop()
            print(a)
            ip += 1
        elif op['type'] == OP_DUPL:
            a = stack.pop()
            stack.append(a)
            stack.append(a)
            ip += 1
        elif op['type'] == OP_2DUPL:
            b = stack.pop()
            a = stack.pop()
            stack.append(a)
            stack.append(b)
            stack.append(a)
            stack.append(b)
            ip += 1
        elif op['type'] == OP_SWAP:
            a = stack.pop()
            b = stack.pop()
            stack.append(a)
            stack.append(b)
            ip += 1
        elif op['type'] == OP_DROP:
            stack.pop()
            ip += 1
        elif op['type'] == OP_OVER:
            a = stack.pop()
            b = stack.pop()
            stack.append(b)
            stack.append(a)
            stack.append(b)
            ip += 1
        elif op['type'] == OP_WHILE:
            ip += 1
        elif op['type'] == OP_DO:
            a = stack.pop()
            if a == 0:
                assert 'jmp' in op, "'end' instruction does not have a reference to the next instruction to jump to. Please call crossreference_blocks() on the program before trying to simulate it"
                ip = op['jmp']
            else:
                ip += 1
        elif op['type'] == OP_MEM:
            stack.append(STR_CAPACITY)
            ip += 1
        elif op['type'] == OP_LOAD:
            addr = stack.pop()
            byte = mem[addr]
            stack.append(byte)
            ip += 1
        elif op['type'] == OP_STORE:
            value = stack.pop()
            addr = stack.pop()
            mem[addr] = value & 0xFF
            ip += 1
        elif op['type'] == OP_SYSCALL0:
            syscall_number = stack.pop()
            if syscall_number == 39:
                stack.append(os.getpid())
            else:
                assert False, "unknown syscall number %d" % syscall_number
            ip += 1
        elif op['type'] == OP_SYSCALL1:
            assert False, "not implemented"
        elif op['type'] == OP_SYSCALL2:
            assert False, "not implemented"
        elif op['type'] == OP_SYSCALL3:
            syscall_number = stack.pop()
            arg1 = stack.pop()
            arg2 = stack.pop()
            arg3 = stack.pop()
            if syscall_number == 1:
                fd = arg1
                buf = arg2
                count = arg3
                s = mem[buf:buf+count].decode('utf-8')
                if fd == 1:
                    print(s, end='')
                elif fd == 2:
                    print(s, end='', file=sys.stderr)
                else:
                    assert False, "unknown file descriptor %d" % fd
                stack.append(count)
            else:
                assert False, "unknown syscall number %d" % syscall_number
            ip += 1
        elif op['type'] == OP_SYSCALL4:
            assert False, "not implemented"
        elif op['type'] == OP_SYSCALL5:
            assert False, "not implemented"
        elif op['type'] == OP_SYSCALL6:
            assert False, "not implemented"
        else:
            assert False, "unreachable"
    if debug:
        print("[INFO] Memory dump")
        print(mem[:20])


def generate_nasm_linux_x86_64(program: List[Op], out_file_path: str) -> None:
    strs = []
    with open(out_file_path, "w") as out:
        out.write("BITS 64\n")
        out.write("segment .text\n")
        out.write("fmt:\n")
        out.write("    mov     r9, -3689348814741910323\n")
        out.write("    sub     rsp, 40\n")
        out.write("    mov     BYTE [rsp+31], 10\n")
        out.write("    lea     rcx, [rsp+30]\n")
        out.write(".L2:\n")
        out.write("    mov     rax, rdi\n")
        out.write("    lea     r8, [rsp+32]\n")
        out.write("    mul     r9\n")
        out.write("    mov     rax, rdi\n")
        out.write("    sub     r8, rcx\n")
        out.write("    shr     rdx, 3\n")
        out.write("    lea     rsi, [rdx+rdx*4]\n")
        out.write("    add     rsi, rsi\n")
        out.write("    sub     rax, rsi\n")
        out.write("    add     eax, 48\n")
        out.write("    mov     BYTE [rcx], al\n")
        out.write("    mov     rax, rdi\n")
        out.write("    mov     rdi, rdx\n")
        out.write("    mov     rdx, rcx\n")
        out.write("    sub     rcx, 1\n")
        out.write("    cmp     rax, 9\n")
        out.write("    ja      .L2\n")
        out.write("    lea     rax, [rsp+32]\n")
        out.write("    mov     edi, 1\n")
        out.write("    sub     rdx, rax\n")
        out.write("    xor     eax, eax\n")
        out.write("    lea     rsi, [rsp+32+rdx]\n")
        out.write("    mov     rdx, r8\n")
        out.write("    mov     rax, 1\n")
        out.write("    syscall\n")
        out.write("    add     rsp, 40\n")
        out.write("    ret\n")
        out.write("global _start\n")
        out.write("_start:\n")
        for ip in range(len(program)):
            op = program[ip]
            assert COUNT_OPS == 36, "Exhaustive handling of operations in generate_nasm_linux_x86_64!"
            out.write("addr_%d:\n" % ip)
            if op['type'] == OP_PUSH_INT:
                out.write("    ;; -- push int %d --\n" % op['value'])
                out.write("    mov rax, %d\n" % op['value'])
                out.write("    push rax\n")
            elif op['type'] == OP_PUSH_STR:
                out.write("    ;; -- push str --\n")
                out.write("    mov rax, %d\n" % len(op['value']))
                out.write("    push rax\n")
                out.write("    push str_%d\n" % len(strs))
                strs.append(op['value'])
            elif op['type'] == OP_PLUS:
                out.write("    ;; -- plus --\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    add rax, rbx\n")
                out.write("    push rax\n")
            elif op['type'] == OP_MINUS:
                out.write("    ;; -- minus --\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    sub rbx, rax\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_FMT:
                out.write("    ;; -- fmt --\n")
                out.write("    pop rdi\n")
                out.write("    call fmt\n")
            elif op['type'] == OP_EQ:
                out.write("    ;; -- equal --\n")
                out.write("    mov rcx, 0\n")
                out.write("    mov rdx, 1\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    cmp rax, rbx\n")
                out.write("    cmove rcx, rdx\n")
                out.write("    push rcx\n")
            elif op['type'] == OP_GT:
                out.write("    ;; -- gt --\n")
                out.write("    mov rcx, 0\n")
                out.write("    mov rdx, 1\n")
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    cmp rax, rbx\n")
                out.write("    cmovg rcx, rdx\n")
                out.write("    push rcx\n")
            elif op['type'] == OP_LT:
                out.write("    ;; -- lt --\n")
                out.write("    mov rcx, 0\n")
                out.write("    mov rdx, 1\n")
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    cmp rax, rbx\n")
                out.write("    cmovl rcx, rdx\n")
                out.write("    push rcx\n")
            elif op['type'] == OP_GE:
                out.write("    ;; -- gt --\n")
                out.write("    mov rcx, 0\n");
                out.write("    mov rdx, 1\n");
                out.write("    pop rbx\n");
                out.write("    pop rax\n");
                out.write("    cmp rax, rbx\n");
                out.write("    cmovge rcx, rdx\n");
                out.write("    push rcx\n")
            elif op['type'] == OP_LE:
                out.write("    ;; -- gt --\n")
                out.write("    mov rcx, 0\n");
                out.write("    mov rdx, 1\n");
                out.write("    pop rbx\n");
                out.write("    pop rax\n");
                out.write("    cmp rax, rbx\n");
                out.write("    cmovle rcx, rdx\n");
                out.write("    push rcx\n")
            elif op['type'] == OP_MOD:
                out.write("    ;; -- mod --\n")
                out.write("    xor rdx, rdx\n")
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    div rbx\n")
                out.write("    push rdx\n")
            elif op['type'] == OP_NE:
                out.write("    ;; -- ne --\n")
                out.write("    mov rcx, 0\n")
                out.write("    mov rdx, 1\n")
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    cmp rax, rbx\n")
                out.write("    cmovne rcx, rdx\n")
                out.write("    push rcx\n")
            elif op['type'] == OP_RSH:
                out.write("    ;; -- rsh --\n")
                out.write("    pop rcx\n")
                out.write("    pop rbx\n")
                out.write("    shr rbx, cl\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_LSH:
                out.write("    ;; -- lsh --\n")
                out.write("    pop rcx\n")
                out.write("    pop rbx\n")
                out.write("    shl rbx, cl\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_BOR:
                out.write("    ;; -- bor --\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    or rbx, rax\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_BAND:
                out.write("    ;; -- band --\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    and rbx, rax\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_IF:
                out.write("    ;; -- if --\n")
                out.write("    pop rax\n")
                out.write("    test rax, rax\n")
                assert 'jmp', "'if' instruction does not have a reference to the end of its block. Please call crossreference_blocks() on the program before trying to compile it"
                out.write("    jz addr_%d\n" % op['jmp'])
            elif op['type'] == OP_ELSE:
                out.write("    ;; -- else --\n")
                assert 'jmp' in op, "'else' instruction does not have a reference to the end of its block. Please call crossreference_blocks() on the program before trying to compile it"
                out.write("    jmp addr_%d\n\n" % op['jmp'])
            elif op['type'] == OP_END:
                assert 'jmp' in op, "'end' instruction does not have a reference to the next instruction to jump to. Please call crossreference_blocks() on the program before trying to compile it"
                out.write("    ;; -- end --\n")
                if ip + 1 != op['jmp']:
                    out.write("    jmp addr_%d\n" % op['jmp'])
            elif op['type'] == OP_DUPL:
                out.write("    ;; -- dupl --\n")
                out.write("    pop rax\n")
                out.write("    push rax\n")
                out.write("    push rax\n")
            elif op['type'] == OP_2DUPL:
                out.write("    ;; -- 2dupl -- \n")
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    push rax\n")
                out.write("    push rbx\n")
                out.write("    push rax\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_SWAP:
                out.write("    ;; -- swap --\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    push rax\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_DROP:
                out.write("    ;; -- drop --\n")
                out.write("    pop rax\n")
            elif op['type'] == OP_OVER:
                out.write("    ;; -- over --\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    push rbx\n")
                out.write("    push rax\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_WHILE:
                out.write("    ;; -- while --\n")
            elif op['type'] == OP_DO:
                out.write("    ;; -- do --\n")
                out.write("    pop rax\n")
                out.write("    test rax, rax\n")
                assert 'jmp' in op, "'do' instruction does not have a reference to the end of its block. Please call crossreference_blocks() on the program before trying to compile it"
                out.write("    jz addr_%d\n" % op['jmp'])
            elif op['type'] == OP_MEM:
                out.write("    ;; -- mem --\n")
                out.write("    push mem\n")
            elif op['type'] == OP_LOAD:
                out.write("    ;; -- load --\n")
                out.write("    pop rax\n")
                out.write("    xor rbx, rbx\n")
                out.write("    mov bl, [rax]\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_STORE:
                out.write("    ;; -- store --\n")
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    mov [rax], bl\n")
            elif op['type'] == OP_SYSCALL0:
                out.write("    ;; -- syscall0 --\n")
                out.write("    pop rax\n")
                out.write("    syscall\n")
                out.write("    push rax\n")
            elif op['type'] == OP_SYSCALL1:
                out.write("    ;; -- syscall1 --\n")
                out.write("    pop rax\n")
                out.write("    pop rdi\n")
                out.write("    syscall\n")
                out.write("    push rax\n")
            elif op['type'] == OP_SYSCALL2:
                out.write("    ;; -- syscall2 -- \n")
                out.write("    pop rax\n")
                out.write("    pop rdi\n")
                out.write("    pop rsi\n")
                out.write("    syscall\n")
                out.write("    push rax\n")
            elif op['type'] == OP_SYSCALL3:
                out.write("    ;; -- syscall3 --\n")
                out.write("    pop rax\n")
                out.write("    pop rdi\n")
                out.write("    pop rsi\n")
                out.write("    pop rdx\n")
                out.write("    syscall\n")
                out.write("    push rax\n")
            elif op['type'] == OP_SYSCALL4:
                out.write("    ;; -- syscall4 --\n")
                out.write("    pop rax\n")
                out.write("    pop rdi\n")
                out.write("    pop rsi\n")
                out.write("    pop rdx\n")
                out.write("    pop r10\n")
                out.write("    syscall\n")
                out.write("    push rax\n")
            elif op['type'] == OP_SYSCALL5:
                out.write("    ;; -- syscall5 --\n")
                out.write("    pop rax\n")
                out.write("    pop rdi\n")
                out.write("    pop rsi\n")
                out.write("    pop rdx\n")
                out.write("    pop r10\n")
                out.write("    pop r8\n")
                out.write("    syscall\n")
                out.write("    push rax\n")
            elif op['type'] == OP_SYSCALL6:
                out.write("    ;; -- syscall6 --\n")
                out.write("    pop rax\n")
                out.write("    pop rdi\n")
                out.write("    pop rsi\n")
                out.write("    pop rdx\n")
                out.write("    pop r10\n")
                out.write("    pop r8\n")
                out.write("    pop r9\n")
                out.write("    syscall\n")
                out.write("    push rax\n")
            else:
                assert False, "unreachable"

        out.write("addr_%d:\n" % len(program))
        out.write("    mov rax, 60\n")
        out.write("    mov rdi, 0\n")
        out.write("    syscall\n")
        out.write("segment .data\n")
        for index, s in enumerate(strs):
            out.write("str_%d: db %s\n" % (index, ','.join(map(hex, list(bytes(s, 'utf-8'))))))
        out.write("segment .bss\n")
        out.write("mem: resb %d\n" % MEM_CAPACITY)


assert COUNT_OPS == 36, "Exhaustive BUILTIN_WORDS definition. Keep in mind that not all of the new ops need to be defined in here. Only those that introduce new builtin words."
BUILTIN_WORDS = {
    '+': OP_PLUS,
    '-': OP_MINUS,
    'mod': OP_MOD,
    'fmt': OP_FMT,
    '=': OP_EQ,
    '>': OP_GT,
    '<': OP_LT,
    '>=': OP_GE,
    '<=': OP_LE,
    '!=': OP_NE,
    '>>': OP_RSH,
    '<<': OP_LSH,
    '|': OP_BOR,
    '&': OP_BAND,
    'if': OP_IF,
    'end': OP_END,
    'else': OP_ELSE,
    'cp': OP_DUPL,
    'pcp': OP_2DUPL,
    '~': OP_SWAP,
    '#': OP_DROP,
    'over': OP_OVER,
    'while': OP_WHILE,
    'do': OP_DO,
    'mem': OP_MEM,
    '&s': OP_STORE,
    '&l': OP_LOAD,
    'sys0': OP_SYSCALL0,
    'sys1': OP_SYSCALL1,
    'sys2': OP_SYSCALL2,
    'sys3': OP_SYSCALL3,
    'sys4': OP_SYSCALL4,
    'sys5': OP_SYSCALL5,
    'sys6': OP_SYSCALL6,
}


def compile_token_to_op(token: Token) -> Op:
    assert len(TokenType) == 3, "Exhaustive token hanlding in compile_token_to_op"
    if token['type'] == TokenType.WORD:
        if token['value'] in BUILTIN_WORDS:
            return {'type': BUILTIN_WORDS[token['value']], 'loc': token['loc']}
        else:
            print("%s:%d:%d: unknown word `%s`" % (token['loc'] + (token['value'], )))
            exit(1)
    elif token['type'] == TokenType.INT:
        return {'type': OP_PUSH_INT, 'value': token['value'], 'loc': token['loc']}
    elif token['type'] == TokenType.STR:
        return {'type': OP_PUSH_STR, 'value': token['value'], 'loc': token['loc']}
    else:
        assert False, 'unreachable'


def compile_tokens_to_program(tokens: List[Token]) -> List[Op]:
    stack = []
    program = [compile_token_to_op(token) for token in tokens]
    for ip in range(len(program)):
        op = program[ip]
        assert COUNT_OPS == 36, "Exhaustive handling of ops in crossreference_program. Keep in mind that not all of the ops need to be handled in here. Only those that form blocks."
        if op['type'] == OP_IF:
            stack.append(ip)
        elif op['type'] == OP_ELSE:
            if_ip = stack.pop()
            if program[if_ip]['type'] != OP_IF:
                print(f"{program[if_ip]['loc']}: [ERROR] 'else' can only be used in 'if'-blocks")
                exit(1)
            program[if_ip]['jmp'] = ip + 1
            stack.append(ip)
        elif op['type'] == OP_END:
            block_ip = stack.pop()
            if program[block_ip]['type'] == OP_IF or program[block_ip]['type'] == OP_ELSE:
                program[block_ip]['jmp'] = ip
                program[ip]['jmp'] = ip + 1
            elif program[block_ip]['type'] == OP_DO:
                assert len(program[block_ip]) >= 2
                program[ip]['jmp'] = program[block_ip]['jmp']
                program[block_ip]['jmp'] = ip + 1
            else:
                print(f"{program[block_ip]['loc']}: [ERROR] 'end' can only close 'if', 'else' or 'do' blocks for now")
                exit(1)
        elif op['type'] == OP_WHILE:
            stack.append(ip)
        elif op['type'] == OP_DO:
            while_ip = stack.pop()
            program[ip]['jmp'] = while_ip
            stack.append(ip)

    if len(stack) > 0:
        print(f"{program[stack.pop()]['loc']}: [ERROR] unclosed block")
        exit(1)

    return program


def find_col(line: int, start: int, predicate: Callable[[str], bool]) -> int:
    while start < len(line) and not predicate(line[start]):
        start += 1
    return start


# def lex_word(text_of_token):
#     try:
#         return (TOKEN_INT, int(text_of_token))
#     except ValueError:
#         return (TOKEN_WORD, text_of_token)


def lex_line(line: str) -> Generator[Tuple[int, TokenType, str], None, None]:
    col = find_col(line, 0, lambda k: not k.isspace())
    while col < len(line):
        col_end = None
        if line[col] == '"':
            col_end = find_col(line, col+1, lambda x: x == '"')
            assert line[col_end] == '"'
            text_of_token = line[col+1:col_end]
            yield (col, TokenType.STR, bytes(text_of_token, "utf-8").decode("unicode_escape"))
            col = find_col(line, col_end+1, lambda x: not x.isspace())
        else:
            col_end = find_col(line, col, lambda x: x.isspace())
            text_of_token = line[col:col_end]
            try:
                yield (col, TokenType.INT, int(text_of_token))
            except ValueError:
                yield (col, TokenType.WORD, text_of_token)
            col = find_col(line, col_end, lambda x: not x.isspace())


def lex_file(file_path: str) -> List[Token]:
    with open(file_path, "r") as f:
        return [{'type': token_type,
                 'loc': (file_path, row + 1, col + 1),
                 'value': token_value}
                for (row, line) in enumerate(f.readlines())
                for (col, token_type, token_value) in lex_line(line.split('--')[0])]


def compile_file_to_program(file_path: str) -> List[Op]:
    return compile_tokens_to_program(lex_file(file_path))


def cmd_call_echoed(cmd: List[str]) -> None:
    print("[CMD] %s" % " ".join(map(shlex.quote, cmd)))
    return subprocess.call(cmd)


def usage(compiler_name: str) -> None:
    print(f"Usage: {compiler_name} [OPTIONS] <SUBCOMMAND> [ARGS]\n")
    print("OPTIONS")
    print("     -dbg                     Enable debug mode\n")
    print("SUBCOMMANDS")
    print("     -s           <file>      Simulate the program")
    print("     -c [OPTIONS] <file>      Compile the program")
    print("     -h                       Print help to STDOUT and exit 0\n")
    print("OPTIONS")
    print("     -r                       Run the program after successful compilation")
    print("     -o         <file|dir>    Customize the output path")
    

if __name__ == "__main__" and "__file__" in globals():
    argv = sys.argv
    assert len(argv) >= 1
    compiler_name, *argv = argv

    while len(argv) > 0:
        if argv[0] == '-dbg':
            debug = True
            argv = argv[1:]
        else:
            break

    if debug:
        print("[INFO] Debug mode is enabled")

    if len(argv) < 1:
        usage(compiler_name)
        print("[ERROR] No subcommand is provided")
        exit(1)
    subcommand, *argv = argv

    if subcommand in ["simulate","-s"]:
        if len(argv) < 1:
            usage(compiler_name)
            print("[ERROR] No input file is provided")
            exit(1)
        program_path, *argv = argv
        program = compile_file_to_program(program_path)
        simulate_little_endian_linux(program)
    elif subcommand in ["compile","-c"]:
        run = False
        program_path = None
        output_path = None
        while len(argv) > 0:
            arg, *argv = argv
            if arg == "-r":
                run = True
            elif arg == "-o":
                if len(argv) == 0:
                    usage(compiler_name)
                    print("[ERROR] No argument is provided for parameter -o")
                    exit(1)
                output_path, *argv = argv
            else:
                program_path = arg
                break
        if program_path is None:
            usage(compiler_name)
            print("[ERROR] No input file is provided")
            exit(1)
            
        basename = None
        basedir = None
        if output_path is not None:
            if path.isdir(output_path):
                basename = path.basename(program_path)
                musc_ext = '.musc'
                if basename.endswith(musc_ext):
                    basename = basename[:-len(musc_ext)]
                basedir = path.dirname(output_path)
            else:
                basename = path.basename(output_path)
                basedir = path.dirname(output_path)
        else:
            basename = path.basename(program_path)
            musc_ext = '.musc'
            if basename.endswith(musc_ext):
                basename = basename[:-len(musc_ext)]
            basedir = path.dirname(program_path)
        basepath = path.join(basedir, basename)

        print(f"[INFO] Generating {basename}.asm")
        program = compile_file_to_program(program_path)
        generate_nasm_linux_x86_64(program, basepath + ".asm")
        cmd_call_echoed(["nasm", "-felf64", basepath + ".asm"])
        cmd_call_echoed(["ld", "-o", basepath, basepath + ".o"])
        if run:
            exit(cmd_call_echoed([basepath] + argv))
    elif subcommand in ["help","-h"]:
        usage(compiler_name)
        exit(0)
    else:
        usage(compiler_name)
        print(f"[ERROR] Unkown subcommand '{subcommand}'")
        exit(1)
