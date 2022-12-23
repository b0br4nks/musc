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
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_3:
    ;; -- print --
    pop rdi
    call print
addr_4:
    ;; -- print --
    pop rdi
    call print
addr_5:
    ;; -- print --
    pop rdi
    call print
addr_6:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_7:
    ;; -- print --
    pop rdi
    call print
addr_8:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_9:
    ;; -- print --
    pop rdi
    call print
addr_10:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_11:
    ;; -- print --
    pop rdi
    call print
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
    ;; -- drop --
    pop rax
addr_17:
    ;; -- push str --
    mov rax, 13
    push rax
    push str_1
addr_18:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_19:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_20:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_21:
    ;; -- drop --
    pop rax
addr_22:
    ;; -- push str --
    mov rax, 21
    push rax
    push str_2
addr_23:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_24:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_25:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_26:
    ;; -- drop --
    pop rax
addr_27:
    ;; -- push str --
    mov rax, 15
    push rax
    push str_3
addr_28:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_29:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_30:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_31:
    ;; -- drop --
    pop rax
addr_32:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_4
addr_33:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_34:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_35:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_36:
    ;; -- drop --
    pop rax
addr_37:
    ;; -- push str --
    mov rax, 13
    push rax
    push str_5
addr_38:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_39:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_40:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_41:
    ;; -- drop --
    pop rax
addr_42:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_6
addr_43:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_44:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_45:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_46:
    ;; -- drop --
    pop rax
addr_47:
    ;; -- push int 88 --
    mov rax, 88
    push rax
addr_48:
    ;; -- print --
    pop rdi
    call print
addr_49:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_7
addr_50:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_51:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_52:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_53:
    ;; -- drop --
    pop rax
addr_54:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_55:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_56:
    ;; -- print --
    pop rdi
    call print
addr_57:
    ;; -- print --
    pop rdi
    call print
addr_58:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_59:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_60:
    ;; -- print --
    pop rdi
    call print
addr_61:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_62:
    ;; -- print --
    pop rdi
    call print
addr_63:
    ;; -- print --
    pop rdi
    call print
addr_64:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_8
addr_65:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_66:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_67:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_68:
    ;; -- drop --
    pop rax
addr_69:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_70:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_71:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_72:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_73:
    ;; -- print --
    pop rdi
    call print
addr_74:
    ;; -- print --
    pop rdi
    call print
addr_75:
    ;; -- print --
    pop rdi
    call print
addr_76:
    ;; -- print --
    pop rdi
    call print
addr_77:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_9
addr_78:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_79:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_80:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_81:
    ;; -- drop --
    pop rax
addr_82:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_83:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_84:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_85:
    ;; -- print --
    pop rdi
    call print
addr_86:
    ;; -- print --
    pop rdi
    call print
addr_87:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_10
addr_88:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_89:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_90:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_91:
    ;; -- drop --
    pop rax
addr_92:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_93:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_94:
    ;; -- drop --
    pop rax
addr_95:
    ;; -- print --
    pop rdi
    call print
addr_96:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_11
addr_97:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_98:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_99:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_100:
    ;; -- drop --
    pop rax
addr_101:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_102:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_103:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_104:
    ;; -- print --
    pop rdi
    call print
addr_105:
    ;; -- drop --
    pop rax
addr_106:
    ;; -- drop --
    pop rax
addr_107:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_12
addr_108:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_109:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_110:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_111:
    ;; -- drop --
    pop rax
addr_112:
    ;; -- push int 9999999999999999999 --
    mov rax, 9999999999999999999
    push rax
addr_113:
    ;; -- print --
    pop rdi
    call print
addr_114:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_1: db 0x48,0x65,0x6c,0x6c,0x6f,0x2c,0x20,0x57,0x6f,0x72,0x6c,0x64,0xa
str_2: db 0xd0,0x9f,0xd1,0x80,0xd0,0xb8,0xd0,0xb2,0xd0,0xb5,0xd1,0x82,0x2c,0x20,0xd0,0x9c,0xd0,0xb8,0xd1,0x80,0xa
str_3: db 0x48,0x65,0x6c,0x6c,0x6f,0x2c,0x20,0x22,0x57,0x6f,0x72,0x6c,0x64,0x22,0xa
str_4: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_5: db 0x48,0x65,0x6c,0x6c,0x6f,0x2c,0xa,0x57,0x6f,0x72,0x6c,0x64,0xa
str_6: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_7: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_8: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_9: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_10: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_11: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_12: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
