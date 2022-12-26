BITS 64
segment .text
print:
    mov     r9, -3689348814741910323
    sub     rsp, 40
    mov     BYTE [rsp+31], 10
    lea     rcx, [rsp+30]
.L2:
    mov     rax, rdi
    lea     r8, [rsp+32]
    mul     r9
    mov     rax, rdi
    sub     r8, rcx
    shr     rdx, 3
    lea     rsi, [rdx+rdx*4]
    add     rsi, rsi
    sub     rax, rsi
    add     eax, 48
    mov     BYTE [rcx], al
    mov     rax, rdi
    mov     rdi, rdx
    mov     rdx, rcx
    sub     rcx, 1
    cmp     rax, 9
    ja      .L2
    lea     rax, [rsp+32]
    mov     edi, 1
    sub     rdx, rax
    xor     eax, eax
    lea     rsi, [rsp+32+rdx]
    mov     rdx, r8
    mov     rax, 1
    syscall
    add     rsp, 40
    ret
global _start
_start:
    mov [args_ptr], rsp
addr_0:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_1:
    ;; -- while --
addr_2:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_3:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_4:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_5:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_11
addr_6:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_7:
    ;; -- print --
    pop rdi
    call print
addr_8:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_9:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_10:
    ;; -- end --
    jmp addr_1
addr_11:
    ;; -- drop --
    pop rax
addr_12:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
segment .bss
args_ptr: resq 1
mem: resb 640000
