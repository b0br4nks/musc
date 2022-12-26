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
    ;; -- argc --
    mov rax, [args_ptr]
    mov rax, [rax]
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
    jz addr_18
addr_4:
    ;; -- push str --
    mov rax, 19
    push rax
    push str_0
addr_5:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_6:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_7:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_8:
    ;; -- drop --
    pop rax
addr_9:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_1
addr_10:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_11:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_12:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_13:
    ;; -- drop --
    pop rax
addr_14:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_15:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_16:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_17:
    ;; -- drop --
    pop rax
addr_18:
    ;; -- end --
addr_19:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_20:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_21:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_22:
    ;; -- argv --
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_23:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_24:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_25:
    ;; -- ::ptr --
addr_26:
    ;; -- while --
addr_27:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_28:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_29:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_30:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_31:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_102
addr_32:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_33:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_34:
    ;; -- push int 48 --
    mov rax, 48
    push rax
addr_35:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_36:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_37:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_38:
    ;; -- push int 57 --
    mov rax, 57
    push rax
addr_39:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_40:
    ;; -- bor --
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_41:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_86
addr_42:
    ;; -- push str --
    mov rax, 8
    push rax
    push str_2
addr_43:
    ;; -- push int 2 --
    mov rax, 2
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
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_48:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_49:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_50:
    ;; -- argv --
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_51:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_52:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_53:
    ;; -- ::ptr --
addr_54:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_55:
    ;; -- while --
addr_56:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_57:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_58:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_59:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_60:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_64
addr_61:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_62:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_63:
    ;; -- end --
    jmp addr_55
addr_64:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_65:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_66:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_67:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_68:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_69:
    ;; -- argv --
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_70:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_71:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_72:
    ;; -- ::ptr --
addr_73:
    ;; -- push int 2 --
    mov rax, 2
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
    ;; -- drop --
    pop rax
addr_77:
    ;; -- push str --
    mov rax, 27
    push rax
    push str_3
addr_78:
    ;; -- push int 2 --
    mov rax, 2
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
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_84:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_85:
    ;; -- drop --
    pop rax
addr_86:
    ;; -- end --
addr_87:
    ;; -- mem --
    push mem
addr_88:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_89:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_90:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_91:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_92:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_93:
    ;; -- push int 48 --
    mov rax, 48
    push rax
addr_94:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_95:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_96:
    ;; -- mem --
    push mem
addr_97:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_98:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_99:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_100:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_101:
    ;; -- end --
    jmp addr_26
addr_102:
    ;; -- drop --
    pop rax
addr_103:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_104:
    ;; -- while --
addr_105:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_106:
    ;; -- mem --
    push mem
addr_107:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_108:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_109:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_115
addr_110:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_111:
    ;; -- print --
    pop rdi
    call print
addr_112:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_113:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_114:
    ;; -- end --
    jmp addr_104
addr_115:
    ;; -- drop --
    pop rax
addr_116:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x55,0x73,0x61,0x67,0x65,0x3a,0x20,0x73,0x65,0x71,0x20,0x3c,0x6c,0x69,0x6d,0x69,0x74,0x3e,0xa
str_1: db 0x45,0x52,0x52,0x4f,0x52,0x3a,0x20,0x6e,0x6f,0x20,0x6c,0x69,0x6d,0x69,0x74,0x20,0x69,0x73,0x20,0x70,0x72,0x6f,0x76,0x69,0x64,0x65,0x64,0xa
str_2: db 0x45,0x52,0x52,0x4f,0x52,0x3a,0x20,0x60
str_3: db 0x60,0x20,0x69,0x73,0x20,0x6e,0x6f,0x74,0x20,0x61,0x20,0x63,0x6f,0x72,0x72,0x65,0x63,0x74,0x20,0x69,0x6e,0x74,0x65,0x67,0x65,0x72,0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
