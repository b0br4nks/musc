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
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_6
addr_4:
    ;; -- push str --
    mov rax, 4
    push rax
    push str_0
addr_5:
    ;; -- else --
    jmp addr_7
addr_6:
    ;; -- push str --
    mov rax, 3
    push rax
    push str_1
addr_7:
    ;; -- end --
addr_8:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_9:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_10:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_11:
    ;; -- drop --
    pop rax
addr_12:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_13:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_14:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_15:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_18
addr_16:
    ;; -- push str --
    mov rax, 4
    push rax
    push str_2
addr_17:
    ;; -- else --
    jmp addr_19
addr_18:
    ;; -- push str --
    mov rax, 3
    push rax
    push str_3
addr_19:
    ;; -- end --
addr_20:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_21:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_22:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_23:
    ;; -- drop --
    pop rax
addr_24:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_4
addr_25:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_26:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_27:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_28:
    ;; -- drop --
    pop rax
addr_29:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_30:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_31:
    ;; -- while --
addr_32:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_33:
    ;; -- push int 1000000 --
    mov rax, 1000000
    push rax
addr_34:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_35:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_51
addr_36:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_37:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_38:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_39:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_40:
    ;; -- drop --
    pop rax
addr_41:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_42:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_43:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_46
addr_44:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_45:
    ;; -- print --
    pop rdi
    call print
addr_46:
    ;; -- end --
addr_47:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_48:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_49:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_50:
    ;; -- end --
    jmp addr_31
addr_51:
    ;; -- drop --
    pop rax
addr_52:
    ;; -- drop --
    pop rax
addr_53:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x79,0x65,0x73,0xa
str_1: db 0x6e,0x6f,0xa
str_2: db 0x79,0x65,0x73,0xa
str_3: db 0x6e,0x6f,0xa
str_4: db 0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
