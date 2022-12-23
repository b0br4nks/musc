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
    ;; -- push str --
    mov rax, 16
    push rax
    push str_0
addr_1:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_2:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_3:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_4:
    ;; -- drop --
    pop rax
addr_5:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x48,0x65,0x6c,0x6c,0x6f,0x2c,0x20,0x2d,0x2d,0x20,0x57,0x6f,0x72,0x6c,0x64,0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
