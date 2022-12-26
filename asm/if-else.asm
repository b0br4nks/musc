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
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_2:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_4:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_5:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_8
addr_6:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_7:
    ;; -- else --
    jmp addr_9
addr_8:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_9:
    ;; -- end --
addr_10:
    ;; -- print --
    pop rdi
    call print
addr_11:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_12:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_13:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_14:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_15:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_16:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_19
addr_17:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_18:
    ;; -- else --
    jmp addr_20
addr_19:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_20:
    ;; -- end --
addr_21:
    ;; -- print --
    pop rdi
    call print
addr_22:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
segment .bss
args_ptr: resq 1
mem: resb 640000
