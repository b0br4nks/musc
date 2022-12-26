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
    jz addr_30
addr_4:
    ;; -- mem --
    push mem
addr_5:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_6:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_7:
    ;; -- while --
addr_8:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_9:
    ;; -- mem --
    push mem
addr_10:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_11:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_12:
    ;; -- mem --
    push mem
addr_13:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_14:
    ;; -- push int 0 --
    mov rax, 0
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
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_17:
    ;; -- push int 0 --
    mov rax, 0
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
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_28
addr_20:
    ;; -- mem --
    push mem
addr_21:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_22:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    ;; -- end --
    jmp addr_7
addr_28:
    ;; -- drop --
    pop rax
addr_29:
    ;; -- else --
    jmp addr_123
addr_30:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_31:
    ;; -- while --
addr_32:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_33:
    ;; -- argc --
    mov rax, [args_ptr]
    mov rax, [rax]
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
    jz addr_122
addr_36:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_37:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_38:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_39:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_40:
    ;; -- argv --
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_41:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_42:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_43:
    ;; -- ::ptr --
addr_44:
    ;; -- push int -100 --
    mov rax, -100
    push rax
addr_45:
    ;; -- push int 257 --
    mov rax, 257
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
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_48:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_49:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_50:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_88
addr_51:
    ;; -- push str --
    mov rax, 27
    push rax
    push str_0
addr_52:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_53:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_54:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_55:
    ;; -- drop --
    pop rax
addr_56:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_57:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_58:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_59:
    ;; -- argv --
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_60:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_61:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_62:
    ;; -- ::ptr --
addr_63:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_64:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_65:
    ;; -- while --
addr_66:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_67:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_68:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_69:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_70:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_74
addr_71:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_72:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_73:
    ;; -- end --
    jmp addr_65
addr_74:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_75:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_76:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_77:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_78:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_79:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_80:
    ;; -- drop --
    pop rax
addr_81:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_1
addr_82:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_83:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_84:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_85:
    ;; -- drop --
    pop rax
addr_86:
    ;; -- drop --
    pop rax
addr_87:
    ;; -- else --
    jmp addr_118
addr_88:
    ;; -- mem --
    push mem
addr_89:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_90:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_91:
    ;; -- while --
addr_92:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_93:
    ;; -- mem --
    push mem
addr_94:
    ;; -- push int 8 --
    mov rax, 8
    push rax
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
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_98:
    ;; -- push int 0 --
    mov rax, 0
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
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_101:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_102:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_103:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_112
addr_104:
    ;; -- mem --
    push mem
addr_105:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_106:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    ;; -- drop --
    pop rax
addr_111:
    ;; -- end --
    jmp addr_91
addr_112:
    ;; -- drop --
    pop rax
addr_113:
    ;; -- mem --
    push mem
addr_114:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_115:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_116:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_117:
    ;; -- drop --
    pop rax
addr_118:
    ;; -- end --
addr_119:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_120:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_121:
    ;; -- end --
    jmp addr_31
addr_122:
    ;; -- drop --
    pop rax
addr_123:
    ;; -- end --
addr_124:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x45,0x52,0x52,0x4f,0x52,0x3a,0x20,0x63,0x6f,0x75,0x6c,0x64,0x20,0x6e,0x6f,0x74,0x20,0x6f,0x70,0x65,0x6e,0x20,0x66,0x69,0x6c,0x65,0x20
str_1: db 0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
