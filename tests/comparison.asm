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
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_2:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3:
    ;; -- fmt --
    pop rdi
    call fmt
addr_4:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_5:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_6:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_7:
    ;; -- fmt --
    pop rdi
    call fmt
addr_8:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_0
addr_9:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_10:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_11:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_12:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_13:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_14:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_15:
    ;; -- fmt --
    pop rdi
    call fmt
addr_16:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_17:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_18:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_19:
    ;; -- fmt --
    pop rdi
    call fmt
addr_20:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_21:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_22:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_23:
    ;; -- fmt --
    pop rdi
    call fmt
addr_24:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_1
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
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_29:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_30:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_31:
    ;; -- fmt --
    pop rdi
    call fmt
addr_32:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_33:
    ;; -- push int 1 --
    mov rax, 1
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
    ;; -- fmt --
    pop rdi
    call fmt
addr_36:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_37:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_38:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_39:
    ;; -- fmt --
    pop rdi
    call fmt
addr_40:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_2
addr_41:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_42:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_43:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_44:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_45:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_46:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_47:
    ;; -- fmt --
    pop rdi
    call fmt
addr_48:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_49:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_50:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_51:
    ;; -- fmt --
    pop rdi
    call fmt
addr_52:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_53:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_54:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_55:
    ;; -- fmt --
    pop rdi
    call fmt
addr_56:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_3
addr_57:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_58:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_59:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_60:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_61:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_62:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_63:
    ;; -- fmt --
    pop rdi
    call fmt
addr_64:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_65:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_66:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_67:
    ;; -- fmt --
    pop rdi
    call fmt
addr_68:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_69:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_70:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_71:
    ;; -- fmt --
    pop rdi
    call fmt
addr_72:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_4
addr_73:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_74:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_75:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_76:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_77:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_78:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_79:
    ;; -- fmt --
    pop rdi
    call fmt
addr_80:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_81:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_82:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_83:
    ;; -- fmt --
    pop rdi
    call fmt
addr_84:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_85:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_86:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_87:
    ;; -- fmt --
    pop rdi
    call fmt
addr_88:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_1: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_2: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_3: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_4: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
segment .bss
mem: resb 640000
