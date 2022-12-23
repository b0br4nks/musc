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
    ;; -- while --
addr_2:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_3:
    ;; -- argc --
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
addr_4:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_5:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_44
addr_6:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_7:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_8:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_9:
    ;; -- argv --
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_10:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_11:
    ;; -- load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_12:
    ;; -- cast(ptr) --
addr_13:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_14:
    ;; -- while --
addr_15:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_16:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_17:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_18:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_19:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_23
addr_20:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_21:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_22:
    ;; -- end --
    jmp addr_14
addr_23:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_24:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_25:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_26:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_27:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_28:
    ;; -- argv --
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_29:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_30:
    ;; -- load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_31:
    ;; -- cast(ptr) --
addr_32:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_33:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_34:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_35:
    ;; -- drop --
    pop rax
addr_36:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_0
addr_37:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_38:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_39:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_40:
    ;; -- drop --
    pop rax
addr_41:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_42:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_43:
    ;; -- end --
    jmp addr_1
addr_44:
    ;; -- drop --
    pop rax
addr_45:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
