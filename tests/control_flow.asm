BITS 64
segment .text
fmt:
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
addr_0:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_1:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_2:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3:
    ;; -- push int 65 --
    mov rax, 65
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
    jz addr_9
addr_6:
    ;; -- push int 64 --
    mov rax, 64
    push rax
addr_7:
    ;; -- fmt --
    pop rdi
    call fmt
addr_8:
    ;; -- else --
    jmp addr_11

addr_9:
    ;; -- push int 128 --
    mov rax, 128
    push rax
addr_10:
    ;; -- fmt --
    pop rdi
    call fmt
addr_11:
    ;; -- end --
addr_12:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_0
addr_13:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_14:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_15:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_16:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_17:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_18:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_19:
    ;; -- push int 64 --
    mov rax, 64
    push rax
addr_20:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_21:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_25
addr_22:
    ;; -- push int 64 --
    mov rax, 64
    push rax
addr_23:
    ;; -- fmt --
    pop rdi
    call fmt
addr_24:
    ;; -- else --
    jmp addr_27

addr_25:
    ;; -- push int 128 --
    mov rax, 128
    push rax
addr_26:
    ;; -- fmt --
    pop rdi
    call fmt
addr_27:
    ;; -- end --
addr_28:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_1
addr_29:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_30:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_31:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_32:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_33:
    ;; -- while --
addr_34:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_35:
    ;; -- push int -1 --
    mov rax, -1
    push rax
addr_36:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_37:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_43
addr_38:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_39:
    ;; -- fmt --
    pop rdi
    call fmt
addr_40:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_41:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_42:
    ;; -- end --
    jmp addr_33
addr_43:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_2
addr_44:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_45:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_46:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_47:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_48:
    ;; -- while --
addr_49:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_50:
    ;; -- push int 11 --
    mov rax, 11
    push rax
addr_51:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_52:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_58
addr_53:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_54:
    ;; -- fmt --
    pop rdi
    call fmt
addr_55:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_56:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_57:
    ;; -- end --
    jmp addr_48
addr_58:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_1: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_2: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
segment .bss
mem: resb 640000
