#!/usr/bin/env python3
import sys
import subprocess
import shlex
from os import path

subscript_counter=0

def subscript(reset=False) -> int:
    global subscript_counter
    if reset:
        subscript_counter = 0
    result = subscript_counter
    subscript_counter += 1
    return result

OP_PUSH=subscript(True)
OP_PLUS=subscript()
OP_MINUS=subscript()
OP_EQUAL=subscript()
OP_DUMP=subscript()
OP_IF=subscript()
OP_END=subscript()
OP_ELSE=subscript()
OP_DUPL=subscript()
OP_GT=subscript()
OP_LT=subscript()
OP_WHILE=subscript()
OP_DO=subscript()
COUNT_OPS=subscript()

def push(x) -> tuple:
    return (OP_PUSH, x) # add new element onto stack

def plus() -> tuple:
    return (OP_PLUS, ) # (+)

def minus() -> tuple:
    return (OP_MINUS, ) # (-)

def equal() -> tuple:
    return (OP_EQUAL, ) # (=)

def dump() -> tuple:
    return (OP_DUMP, ) # (=>)

def iff() -> tuple:
    return (OP_IF, ) # (if)

def end() -> tuple:
    return (OP_END, ) # (end)

def elze() -> tuple:
    return (OP_ELSE, ) # (else)

def dupl():
    return (OP_DUPL, ) # (cp)

def gt():
    return (OP_GT, ) # (>)

def lt():
    return (OP_LT, ) # (<)

def whyle():
    return (OP_WHILE, ) # (while)

def dou():
    return (OP_DO, ) # (do)

def simulate_program(program):
    stack = []
    ip = 0
    while ip < len(program):
        assert COUNT_OPS == 13, "Exhaustive handling of operations in simulation"
        op = program[ip]
        if op[0] == OP_PUSH:
            stack.append(op[1])
            ip += 1
        elif op[0] == OP_PLUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(a + b)
            ip += 1
        elif op[0] == OP_MINUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(b - a)
            ip += 1
        elif op[0] == OP_EQUAL:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(a == b))
            ip += 1
        elif op[0] == OP_IF:
            a = stack.pop()
            if a == 0:
                assert len(op) >= 2, "'if' instruction does not have a reference to the end of its block. Please call crossreference_blocks() on the program before trying to simulate it"
                ip = op[1]
            else:
                ip += 1
        elif op[0] == OP_ELSE:
            assert len(op) >= 2, "'else' instruction does not have a reference to the end of its block. Please call crossreference_blocks() on the program before trying to simulate it"
            ip = op[1]
        elif op[0] == OP_END:
            assert len(op) >= 2, "'end' instruction does not have a reference to the next instruction to jump to. Please call crossreference_blocks() on the program before trying to simulate it"
            ip = op[1]
        elif op[0] == OP_DUMP:
            a = stack.pop()
            print(a)
            ip += 1
        elif op[0] == OP_DUPL:
            a = stack.pop()
            stack.append(a)
            stack.append(a)
            ip += 1
        elif op[0] == OP_GT:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(a < b))
            ip += 1
        elif op[0] == OP_LT:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(a > b))
            ip += 1
        elif op[0] == OP_WHILE:
            ip += 1
        elif op[0] == OP_DO:
            a = stack.pop()
            if a == 0:
                assert len(op) >= 2, "'end' instruction does not have a reference to the next instruction to jump to. Please call crossreference_blocks() on the program before trying to simulate it"
                ip = op[1]
            else:
                ip += 1

        else:
            assert False, "unreachable"

# TODO: SoC, verify if dump is stable
def compile_program(program, out_file_path):
    with open(out_file_path, "w") as out:
        out.write("segment .text\n")
        out.write("dump:\n")
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
            assert COUNT_OPS == 13, "Exhaustive handling of operations in compilation!"
            out.write("addr_%d:\n" % ip)
            if op[0] == OP_PUSH:
                out.write("    ;; -- push %d --\n" % op[1])
                out.write("    push %d\n" % op[1])
            elif op[0] == OP_PLUS:
                out.write("    ;; -- plus --\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    add rax, rbx\n")
                out.write("    push rax\n")
            elif op[0] == OP_MINUS:
                out.write("    ;; -- minus --\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    sub rbx, rax\n")
                out.write("    push rbx\n")
            elif op[0] == OP_DUMP:
                out.write("    ;; -- dump --\n")
                out.write("    pop rdi\n")
                out.write("    call dump\n")
            elif op[0] == OP_EQUAL:
                out.write("    ;; -- equal --\n")
                out.write("    mov rcx, 0\n")
                out.write("    mov rdx, 1\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    cmp rax, rbx\n")
                out.write("    cmove rcx, rdx\n")
                out.write("    push rcx\n")
            elif op[0] == OP_IF:
                out.write("    ;; -- if --\n")
                out.write("    pop rax\n")
                out.write("    test rax, rax\n")
                assert len(op) >= 2, "'if' instruction does not have a reference to the end of its block. Please call crossreference_blocks() on the program before trying to compile it"
                out.write("    jz addr_%d\n" % op[1])
            elif op[0] == OP_ELSE:
                out.write("    ;; -- else --\n")
                assert len(op) >= 2, "'else' instruction does not have a reference to the end of its block. Please call crossreference_blocks() on the program before trying to compile it"
                out.write("    jmp addr_%d\n\n" % op[1])
            elif op[0] == OP_END:
                assert len(op) >= 2, "'end' instruction does not have a reference to the next instruction to jump to. Please call crossreference_blocks() on the program before trying to compile it"
                out.write("    ;; -- end --\n")
                if ip + 1 != op[1]:
                    out.write("    jmp addr_%d\n" % op[1])
            elif op[0] == OP_DUPL:
                out.write("    ;; -- dupl --\n")
                out.write("    pop rax\n")
                out.write("    push rax\n")
                out.write("    push rax\n")
            elif op[0] == OP_GT:
                out.write("    ;; -- gt --\n")
                out.write("    mov rcx, 0\n");
                out.write("    mov rdx, 1\n");
                out.write("    pop rbx\n");
                out.write("    pop rax\n");
                out.write("    cmp rax, rbx\n");
                out.write("    cmovg rcx, rdx\n");
                out.write("    push rcx\n")
            elif op[0] == OP_LT:
                out.write("    ;; -- gt --\n")
                out.write("    mov rcx, 0\n");
                out.write("    mov rdx, 1\n");
                out.write("    pop rbx\n");
                out.write("    pop rax\n");
                out.write("    cmp rax, rbx\n");
                out.write("    cmovl rcx, rdx\n");
                out.write("    push rcx\n")
            elif op[0] == OP_WHILE:
                out.write("    ;; -- while --\n")
            elif op[0] == OP_DO:
                out.write("    ;; -- do --\n")
                out.write("    pop rax\n")
                out.write("    test rax, rax\n")
                assert len(op) >= 2, "'do' instruction does not have a reference to the end of its block. Please call crossreference_blocks() on the program before trying to compile it"
                out.write("    jz addr_%d\n" % op[1])
            else:
                assert False, "unreachable"

        out.write("addr_%d:\n" % len(program))
        out.write("    mov rax, 60\n")
        out.write("    mov rdi, 0\n")
        out.write("    syscall\n")

def parse_token_as_op(token):
    (file_path, row, col, word) = token
    assert COUNT_OPS == 13, "Exhaustive op handling in parse_token_as_op"
    if word == '+':
        return plus()
    elif word == '-':
        return minus()
    elif word == '=>':
        return dump()
    elif word == '=':
        return equal()
    elif word == 'if':
        return iff()
    elif word == 'end':
        return end()
    elif word == 'else':
        return elze()
    elif word == 'cp':
        return dupl()
    elif word == '>':
        return gt()
    elif word == '<':
        return lt()
    elif word == 'while':
        return whyle()
    elif word == 'do':
        return dou()
    else:
        try:
            return push(int(word))
        except ValueError as err:
            print(f"{file_path}:{row}:{col}: {err}")
            exit(1)

def crossreference_blocks(program):
    stack = []
    for ip in range(len(program)):
        op = program[ip]
        assert COUNT_OPS == 13, "Exhaustive handling of ops in crossreference_program. Keep in mind that not all of the ops need to be handled in here. Only those that form blocks."
        if op[0] == OP_IF:
            stack.append(ip)
        elif op[0] == OP_ELSE:
            if_ip = stack.pop()
            assert program[if_ip][0] == OP_IF, "'else' can only be used in 'if'-blocks"
            program[if_ip] = (OP_IF, ip + 1)
            stack.append(ip)
        elif op[0] == OP_END:
            block_ip = stack.pop()
            if program[block_ip][0] == OP_IF or program[block_ip][0] == OP_ELSE:
                program[block_ip] = (program[block_ip][0], ip)
                program[ip] = (OP_END, ip + 1)
            elif program[block_ip][0] == OP_DO:
                assert len(program[block_ip]) >= 2
                program[ip] = (OP_END, program[block_ip][1])
                program[block_ip] = (OP_DO, ip + 1)
            else:
                assert False, "'end' can only close 'if', 'else' or 'do' blocks for now"
        elif op[0] == OP_WHILE:
            stack.append(ip)
        elif op[0] == OP_DO:
            whyle_ip = stack.pop()
            program[ip] = (OP_DO, whyle_ip)
            stack.append(ip)

    return program

def find_col(line, start, predicate) -> int:
    while start < len(line) and not predicate(line[start]):
        start += 1
    return start

def lex_line(line):
    col = find_col(line, 0, lambda k: not k.isspace())
    while col < len(line):
        col_end = find_col(line, col, lambda k: k.isspace())
        yield (col, line[col:col_end])
        col = find_col(line, col_end, lambda k: not k.isspace())

def lex_file(file_path):
    with open(file_path, "r") as f:
        return [(file_path, row, col, token)
                for (row, line) in enumerate(f.readlines())
                for (col, token) in lex_line(line)]

def load_program_from_file(file_path):
    return crossreference_blocks([parse_token_as_op(token) for token in lex_file(file_path)])

def cmd_echoed(cmd):
    print("[CMD] %s" % " ".join(map(shlex.quote, cmd)))
    subprocess.call(cmd)

def usage(compiler_name):
    print(f"Usage: {compiler_name} <SUBCOMMAND> [ARGS]")
    print("SUBCOMMANDS:")
    print("    simulate, -s          <file>      Simulate the program")
    print("    compile,  -c [-r run] <file>      Compile the program")
    print("    help,     -h                      Print help to STDOUT and exit 0")

if __name__ == "__main__":
    argv = sys.argv
    assert len(argv) >= 1
    compiler_name, *argv = argv
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
        program = load_program_from_file(program_path)
        simulate_program(program)
    elif subcommand in ["compile","-c"]:
        run = False
        program_path = None
        while len(argv) > 0:
            flag, *argv = argv
            if flag == "-r":
                run = True
            else:
                program_path = flag
                break;
        if program_path is None:
            usage(compiler_name)
            print("[ERROR] No input file is provided")
            exit(1)

        program = load_program_from_file(program_path)
        musc_ext = ".musc"
        basename = path.basename(program_path)
        if basename.endswith(musc_ext):
            basename = basename[:-len(musc_ext)]
        print(f"[INFO] Generating {basename}.asm")
        compile_program(program, basename + ".asm")
        cmd_echoed(["nasm", "-felf64", basename + ".asm"])
        cmd_echoed(["ld", "-o", basename, basename + ".o"])
        if run:
            cmd_echoed(["./" + basename])
    elif subcommand in ["help","-h"]:
        usage(compiler_name)
        exit(0)
    else:
        usage(compiler_name)
        print(f"[ERROR] Unkown subcommand '{subcommand}'")
        exit(1)
