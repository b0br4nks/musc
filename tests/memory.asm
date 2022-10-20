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
    ;; -- mem --
    push mem
addr_1:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_2:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3:
    ;; -- push int 77 --
    mov rax, 77
    push rax
addr_4:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_5:
    ;; -- mem --
    push mem
addr_6:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_7:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_8:
    ;; -- push int 85 --
    mov rax, 85
    push rax
addr_9:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_10:
    ;; -- mem --
    push mem
addr_11:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_12:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_13:
    ;; -- push int 83 --
    mov rax, 83
    push rax
addr_14:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_15:
    ;; -- mem --
    push mem
addr_16:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_17:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_18:
    ;; -- push int 67 --
    mov rax, 67
    push rax
addr_19:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_20:
    ;; -- mem --
    push mem
addr_21:
    ;; -- push int 4 --
    mov rax, 4
    push rax
addr_22:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_23:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_24:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_25:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_0
addr_26:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_27:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_28:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_29:
    ;; -- push int 5 --
    mov rax, 5
    push rax
addr_30:
    ;; -- mem --
    push mem
addr_31:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_32:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_33:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_34:
    ;; -- fmt --
    pop rdi
    call fmt
addr_35:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_1
addr_36:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_37:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_38:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_39:
    ;; -- mem --
    push mem
addr_40:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_41:
    ;; -- push int 77 --
    mov rax, 77
    push rax
addr_42:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_43:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_44:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_45:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_46:
    ;; -- push int 85 --
    mov rax, 85
    push rax
addr_47:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_48:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_49:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_50:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_51:
    ;; -- push int 83 --
    mov rax, 83
    push rax
addr_52:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_53:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_54:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_55:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_56:
    ;; -- push int 67 --
    mov rax, 67
    push rax
addr_57:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_58:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_59:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_60:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_61:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_62:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_63:
    ;; -- mem --
    push mem
addr_64:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_65:
    ;; -- mem --
    push mem
addr_66:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_67:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_68:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_69:
    ;; -- fmt --
    pop rdi
    call fmt
addr_70:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_2
addr_71:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_72:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_73:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_74:
    ;; -- mem --
    push mem
addr_75:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_76:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_77:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_78:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_79:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_80:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_81:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_82:
    ;; -- mem --
    push mem
addr_83:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_84:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_85:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_86:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_87:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_88:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_89:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_90:
    ;; -- mem --
    push mem
addr_91:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_92:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_93:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_94:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_95:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_96:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_97:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_98:
    ;; -- mem --
    push mem
addr_99:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_100:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_101:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_102:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_103:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_104:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_105:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_106:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_3
addr_107:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_108:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_109:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_110:
    ;; -- push int 5 --
    mov rax, 5
    push rax
addr_111:
    ;; -- mem --
    push mem
addr_112:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_113:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_114:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_115:
    ;; -- fmt --
    pop rdi
    call fmt
addr_116:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_1: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_2: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_3: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
segment .bss
mem: resb 640000
