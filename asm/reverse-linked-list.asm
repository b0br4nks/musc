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
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1:
    ;; -- while --
addr_2:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_3:
    ;; -- push int 5 --
    mov rax, 5
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
    jz addr_53
addr_6:
    ;; -- mem --
    push mem
addr_7:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_8:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
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
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_13:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_14:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_15:
    ;; -- push int 16 --
    mov rax, 16
    push rax
addr_16:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_17:
    ;; -- mem --
    push mem
addr_18:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_19:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_20:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_21:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_22:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_23:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_24:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_25:
    ;; -- mem --
    push mem
addr_26:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_27:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_28:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_29:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_30:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_31:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_32:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_33:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_34:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_35:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_36:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_37:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_38:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_39:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_40:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_41:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_42:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_43:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_44:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_45:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_46:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_47:
    ;; -- ::ptr --
addr_48:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_49:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_50:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_51:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_52:
    ;; -- end --
    jmp addr_1
addr_53:
    ;; -- drop --
    pop rax
addr_54:
    ;; -- while --
addr_55:
    ;; -- mem --
    push mem
addr_56:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_57:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_58:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_59:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_120
addr_60:
    ;; -- mem --
    push mem
addr_61:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_62:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_63:
    ;; -- ::ptr --
addr_64:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_65:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_66:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_67:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_68:
    ;; -- ::ptr --
addr_69:
    ;; -- push int 8 --
    mov rax, 8
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
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_73:
    ;; -- mem --
    push mem
addr_74:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_75:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_76:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_77:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_78:
    ;; -- mem --
    push mem
addr_79:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_80:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_81:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_82:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_83:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_84:
    ;; -- push int 16 --
    mov rax, 16
    push rax
addr_85:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_86:
    ;; -- mem --
    push mem
addr_87:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_88:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_89:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_90:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_91:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_92:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_93:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_94:
    ;; -- mem --
    push mem
addr_95:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_96:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_97:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_98:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_99:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_100:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_101:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_102:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_103:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_104:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_105:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_106:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_107:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_108:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_109:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_110:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_111:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_112:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_113:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_114:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_115:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_116:
    ;; -- ::ptr --
addr_117:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_118:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_119:
    ;; -- end --
    jmp addr_54
addr_120:
    ;; -- while --
addr_121:
    ;; -- mem --
    push mem
addr_122:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_123:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_124:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_125:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_126:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_127:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_145
addr_128:
    ;; -- mem --
    push mem
addr_129:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_130:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_131:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_132:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_133:
    ;; -- ::ptr --
addr_134:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_135:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_136:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_137:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_138:
    ;; -- ::ptr --
addr_139:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_140:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_141:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_142:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_143:
    ;; -- print --
    pop rdi
    call print
addr_144:
    ;; -- end --
    jmp addr_120
addr_145:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
segment .bss
args_ptr: resq 1
mem: resb 640000
