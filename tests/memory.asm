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
    ;; -- push int 83 --
    mov rax, 83
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
    ;; -- push int 75 --
    mov rax, 75
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
    ;; -- push int 79 --
    mov rax, 79
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
    ;; -- push int 82 --
    mov rax, 82
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
    ;; -- push int 80 --
    mov rax, 80
    push rax
addr_24:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_25:
    ;; -- mem --
    push mem
addr_26:
    ;; -- push int 5 --
    mov rax, 5
    push rax
addr_27:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_28:
    ;; -- push int 73 --
    mov rax, 73
    push rax
addr_29:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_30:
    ;; -- mem --
    push mem
addr_31:
    ;; -- push int 6 --
    mov rax, 6
    push rax
addr_32:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_33:
    ;; -- push int 79 --
    mov rax, 79
    push rax
addr_34:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_35:
    ;; -- mem --
    push mem
addr_36:
    ;; -- push int 7 --
    mov rax, 7
    push rax
addr_37:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_38:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_39:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_40:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_41:
    ;; -- mem --
    push mem
addr_42:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_43:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_44:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_45:
    ;; -- drop --
    pop rax
addr_46:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_0
addr_47:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_48:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_49:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_50:
    ;; -- drop --
    pop rax
addr_51:
    ;; -- mem --
    push mem
addr_52:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_53:
    ;; -- push int 83 --
    mov rax, 83
    push rax
addr_54:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
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
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_58:
    ;; -- push int 75 --
    mov rax, 75
    push rax
addr_59:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_60:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_61:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_62:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_63:
    ;; -- push int 79 --
    mov rax, 79
    push rax
addr_64:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_65:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_66:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_67:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_68:
    ;; -- push int 82 --
    mov rax, 82
    push rax
addr_69:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_70:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_71:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_72:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_73:
    ;; -- push int 80 --
    mov rax, 80
    push rax
addr_74:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_75:
    ;; -- push int 1 --
    mov rax, 1
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
    ;; -- push int 73 --
    mov rax, 73
    push rax
addr_79:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_80:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_81:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_82:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_83:
    ;; -- push int 79 --
    mov rax, 79
    push rax
addr_84:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_85:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_86:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_87:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_88:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_89:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_90:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_91:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_92:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_93:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_94:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_95:
    ;; -- mem --
    push mem
addr_96:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_97:
    ;; -- mem --
    push mem
addr_98:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_99:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_100:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_101:
    ;; -- drop --
    pop rax
addr_102:
    ;; -- mem --
    push mem
addr_103:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_104:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_105:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_106:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_107:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_108:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_109:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_110:
    ;; -- mem --
    push mem
addr_111:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_112:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_113:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_114:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_115:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_116:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_117:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_118:
    ;; -- mem --
    push mem
addr_119:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_120:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_121:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_122:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_123:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_124:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_125:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_126:
    ;; -- mem --
    push mem
addr_127:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_128:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_129:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_130:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_131:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_132:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_133:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_134:
    ;; -- mem --
    push mem
addr_135:
    ;; -- push int 4 --
    mov rax, 4
    push rax
addr_136:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_137:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_138:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_139:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_140:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_141:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_142:
    ;; -- mem --
    push mem
addr_143:
    ;; -- push int 5 --
    mov rax, 5
    push rax
addr_144:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_145:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_146:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_147:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_148:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_149:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_150:
    ;; -- mem --
    push mem
addr_151:
    ;; -- push int 6 --
    mov rax, 6
    push rax
addr_152:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_153:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_154:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_155:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_156:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_157:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_158:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_1
addr_159:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_160:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_161:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_162:
    ;; -- drop --
    pop rax
addr_163:
    ;; -- push int 7 --
    mov rax, 7
    push rax
addr_164:
    ;; -- mem --
    push mem
addr_165:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_166:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_167:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_168:
    ;; -- drop --
    pop rax
addr_169:
    ;; -- push str --
    mov rax, 29
    push rax
    push str_2
addr_170:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_171:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_172:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_173:
    ;; -- drop --
    pop rax
addr_174:
    ;; -- mem --
    push mem
addr_175:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_176:
    ;; -- push int 63 --
    mov rax, 63
    push rax
addr_177:
    ;; -- lsh --
    pop rcx
    pop rbx
    shl rbx, cl
    push rbx
addr_178:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_179:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_180:
    ;; -- store64 --
    pop rbx
    pop rax
    mov [rax], rbx
addr_181:
    ;; -- mem --
    push mem
addr_182:
    ;; -- load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_183:
    ;; -- print --
    pop rdi
    call print
addr_184:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_3
addr_185:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_186:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_187:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_188:
    ;; -- drop --
    pop rax
addr_189:
    ;; -- mem --
    push mem
addr_190:
    ;; -- push int 18446744073709551615 --
    mov rax, 18446744073709551615
    push rax
addr_191:
    ;; -- store64 --
    pop rbx
    pop rax
    mov [rax], rbx
addr_192:
    ;; -- mem --
    push mem
addr_193:
    ;; -- load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_194:
    ;; -- print --
    pop rdi
    call print
addr_195:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_1: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_2: db 0xa,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_3: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
