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
    jz addr_38
addr_4:
    ;; -- push str --
    mov rax, 28
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
    mov rax, 15
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
    ;; -- push str --
    mov rax, 42
    push rax
    push str_2
addr_15:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_16:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_17:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_18:
    ;; -- drop --
    pop rax
addr_19:
    ;; -- push str --
    mov rax, 40
    push rax
    push str_3
addr_20:
    ;; -- push int 2 --
    mov rax, 2
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
    mov rax, 67
    push rax
    push str_4
addr_25:
    ;; -- push int 2 --
    mov rax, 2
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
    ;; -- push str --
    mov rax, 34
    push rax
    push str_5
addr_30:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_31:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_32:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_33:
    ;; -- drop --
    pop rax
addr_34:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_35:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_36:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_37:
    ;; -- drop --
    pop rax
addr_38:
    ;; -- end --
addr_39:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_40:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_41:
    ;; -- mem --
    push mem
addr_42:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_43:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_44:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_45:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_46:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_47:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_48:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_49:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_50:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_51:
    ;; -- push int 16 --
    mov rax, 16
    push rax
addr_52:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_53:
    ;; -- mem --
    push mem
addr_54:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_55:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_56:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_57:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_58:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_59:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_60:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_61:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_62:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_63:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_64:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_65:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_66:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_67:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_68:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_69:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_70:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_71:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_72:
    ;; -- mem --
    push mem
addr_73:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_74:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_75:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_76:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_77:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_78:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_79:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_80:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_81:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_82:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_86:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_87:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_88:
    ;; -- mem --
    push mem
addr_89:
    ;; -- push int 32 --
    mov rax, 32
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
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_94:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_95:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_96:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_97:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_98:
    ;; -- push int 16 --
    mov rax, 16
    push rax
addr_99:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_100:
    ;; -- mem --
    push mem
addr_101:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_102:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_103:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_104:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_105:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_106:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_107:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_108:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_112:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_113:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_114:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_115:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_116:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_117:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_118:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_119:
    ;; -- mem --
    push mem
addr_120:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_121:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_125:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_126:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_127:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_128:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_129:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_130:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_131:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_132:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_133:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_134:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_135:
    ;; -- mem --
    push mem
addr_136:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_137:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_138:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_139:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_140:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_141:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_142:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_143:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_144:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_145:
    ;; -- push int 16 --
    mov rax, 16
    push rax
addr_146:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_147:
    ;; -- mem --
    push mem
addr_148:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_149:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_150:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_151:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_152:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_153:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_154:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_155:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_156:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_157:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_158:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_159:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_160:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_161:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_162:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_163:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_164:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_165:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_166:
    ;; -- mem --
    push mem
addr_167:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_168:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_169:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_170:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_171:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_172:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_173:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_174:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_175:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_176:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_177:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_178:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_179:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_180:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_181:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_182:
    ;; -- mem --
    push mem
addr_183:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_184:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_185:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_186:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_187:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_188:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_189:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_190:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_191:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_192:
    ;; -- push int 16 --
    mov rax, 16
    push rax
addr_193:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_194:
    ;; -- mem --
    push mem
addr_195:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_196:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_197:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_198:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_199:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_200:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_201:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_202:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_203:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_204:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_205:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_206:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_207:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_208:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_209:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_210:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_211:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_212:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_213:
    ;; -- mem --
    push mem
addr_214:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_215:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_216:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_217:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_218:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_219:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_220:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_221:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_222:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_223:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_224:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_225:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_226:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_227:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_228:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_229:
    ;; -- mem --
    push mem
addr_230:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_231:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_232:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_233:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_234:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_235:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_236:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_237:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_238:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_239:
    ;; -- push int 16 --
    mov rax, 16
    push rax
addr_240:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_241:
    ;; -- mem --
    push mem
addr_242:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_243:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_244:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_245:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_246:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_247:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_248:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_249:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_250:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_251:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_252:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_253:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_254:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_255:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_256:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_257:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_258:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_259:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_260:
    ;; -- mem --
    push mem
addr_261:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_262:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_263:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_264:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_265:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_266:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_267:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_268:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_269:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_270:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_271:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_272:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_273:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_274:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_275:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_276:
    ;; -- mem --
    push mem
addr_277:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_278:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_279:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_280:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_281:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_282:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_283:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_284:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_285:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_286:
    ;; -- push int 16 --
    mov rax, 16
    push rax
addr_287:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_288:
    ;; -- mem --
    push mem
addr_289:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_290:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_291:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_292:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_293:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_294:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_295:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_296:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_297:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_298:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_299:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_300:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_301:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_302:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_303:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_304:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_305:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_306:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_307:
    ;; -- mem --
    push mem
addr_308:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_309:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_310:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_311:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_312:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_313:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_314:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_315:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_316:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_317:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_318:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_319:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_320:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_321:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_322:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_323:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_324:
    ;; -- argv --
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_325:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_326:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_327:
    ;; -- ::ptr --
addr_328:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_329:
    ;; -- push str --
    mov rax, 3
    push rax
    push str_6
addr_330:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_331:
    ;; -- drop --
    pop rax
addr_332:
    ;; -- while --
addr_333:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_334:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_335:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_336:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_337:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_338:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_339:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_340:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_341:
    ;; -- band --
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_342:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_349
addr_343:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_344:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_345:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_346:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_347:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_348:
    ;; -- else --
    jmp addr_352
addr_349:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_350:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_351:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_352:
    ;; -- end --
addr_353:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_360
addr_354:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_355:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_356:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_357:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_358:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_359:
    ;; -- end --
    jmp addr_332
addr_360:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_361:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_362:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_363:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_364:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_365:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_366:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_367:
    ;; -- band --
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_368:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_661
addr_369:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_370:
    ;; -- while --
addr_371:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_372:
    ;; -- mem --
    push mem
addr_373:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_374:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_375:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_376:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_377:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_378:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_379:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_380:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_381:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_382:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_383:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_659
addr_384:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_385:
    ;; -- push int 16 --
    mov rax, 16
    push rax
addr_386:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_387:
    ;; -- mem --
    push mem
addr_388:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_389:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_390:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_391:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_392:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_393:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_394:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_395:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_396:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_397:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_398:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_399:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_400:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_401:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_402:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_403:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_452
addr_404:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_405:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_406:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_407:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_408:
    ;; -- mem --
    push mem
addr_409:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_410:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_411:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_412:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_413:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_414:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_429
addr_415:
    ;; -- here --
    mov rax, 16
    push rax
    push str_7
addr_416:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_417:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_418:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_419:
    ;; -- drop --
    pop rax
addr_420:
    ;; -- push str --
    mov rax, 47
    push rax
    push str_8
addr_421:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_422:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_423:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_424:
    ;; -- drop --
    pop rax
addr_425:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_426:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_427:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_428:
    ;; -- drop --
    pop rax
addr_429:
    ;; -- end --
addr_430:
    ;; -- mem --
    push mem
addr_431:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_432:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_433:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_434:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_435:
    ;; -- mem --
    push mem
addr_436:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_437:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_438:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_439:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_440:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_441:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_442:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_443:
    ;; -- mem --
    push mem
addr_444:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_445:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_446:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_447:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_448:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_449:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_450:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_451:
    ;; -- else --
    jmp addr_654
addr_452:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_453:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_454:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_455:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_456:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_588
addr_457:
    ;; -- mem --
    push mem
addr_458:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_459:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_460:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_461:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_462:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_463:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_478
addr_464:
    ;; -- here --
    mov rax, 16
    push rax
    push str_9
addr_465:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_466:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_467:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_468:
    ;; -- drop --
    pop rax
addr_469:
    ;; -- push str --
    mov rax, 48
    push rax
    push str_10
addr_470:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_471:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_472:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_473:
    ;; -- drop --
    pop rax
addr_474:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_475:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_476:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_477:
    ;; -- drop --
    pop rax
addr_478:
    ;; -- end --
addr_479:
    ;; -- mem --
    push mem
addr_480:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_481:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_482:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_483:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_484:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_485:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_486:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_487:
    ;; -- mem --
    push mem
addr_488:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_489:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_490:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_491:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_492:
    ;; -- mem --
    push mem
addr_493:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_494:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_495:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_496:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_497:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_498:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_499:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_500:
    ;; -- mem --
    push mem
addr_501:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_502:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_503:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_504:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_505:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_506:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_521
addr_507:
    ;; -- here --
    mov rax, 16
    push rax
    push str_11
addr_508:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_509:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_510:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_511:
    ;; -- drop --
    pop rax
addr_512:
    ;; -- push str --
    mov rax, 48
    push rax
    push str_12
addr_513:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_514:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_515:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_516:
    ;; -- drop --
    pop rax
addr_517:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_518:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_519:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_520:
    ;; -- drop --
    pop rax
addr_521:
    ;; -- end --
addr_522:
    ;; -- mem --
    push mem
addr_523:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_524:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_525:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_526:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_527:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_528:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_529:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_530:
    ;; -- mem --
    push mem
addr_531:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_532:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_533:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_534:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_535:
    ;; -- mem --
    push mem
addr_536:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_537:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_538:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_539:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_540:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_541:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_542:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_543:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_544:
    ;; -- mem --
    push mem
addr_545:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_546:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_547:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_548:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_549:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_550:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_565
addr_551:
    ;; -- here --
    mov rax, 16
    push rax
    push str_13
addr_552:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_553:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_554:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_555:
    ;; -- drop --
    pop rax
addr_556:
    ;; -- push str --
    mov rax, 47
    push rax
    push str_14
addr_557:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_558:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_559:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_560:
    ;; -- drop --
    pop rax
addr_561:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_562:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_563:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_564:
    ;; -- drop --
    pop rax
addr_565:
    ;; -- end --
addr_566:
    ;; -- mem --
    push mem
addr_567:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_568:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_569:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_570:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_571:
    ;; -- mem --
    push mem
addr_572:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_573:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_574:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_575:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_576:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_577:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_578:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_579:
    ;; -- mem --
    push mem
addr_580:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_581:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_582:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_583:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_584:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_585:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_586:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_587:
    ;; -- else --
    jmp addr_653
addr_588:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_589:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_590:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_591:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_592:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_638
addr_593:
    ;; -- mem --
    push mem
addr_594:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_595:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_596:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_597:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_598:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_599:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_614
addr_600:
    ;; -- here --
    mov rax, 16
    push rax
    push str_15
addr_601:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_602:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_603:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_604:
    ;; -- drop --
    pop rax
addr_605:
    ;; -- push str --
    mov rax, 48
    push rax
    push str_16
addr_606:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_607:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_608:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_609:
    ;; -- drop --
    pop rax
addr_610:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_611:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_612:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_613:
    ;; -- drop --
    pop rax
addr_614:
    ;; -- end --
addr_615:
    ;; -- mem --
    push mem
addr_616:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_617:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_618:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_619:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_620:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_621:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_622:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], rbx
addr_623:
    ;; -- mem --
    push mem
addr_624:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_625:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_626:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_627:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_628:
    ;; -- mem --
    push mem
addr_629:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_630:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_631:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_632:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_633:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_634:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_635:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_636:
    ;; -- print --
    pop rdi
    call print
addr_637:
    ;; -- else --
    jmp addr_652
addr_638:
    ;; -- here --
    mov rax, 17
    push rax
    push str_17
addr_639:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_640:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_641:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_642:
    ;; -- drop --
    pop rax
addr_643:
    ;; -- push str --
    mov rax, 14
    push rax
    push str_18
addr_644:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_645:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_646:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_647:
    ;; -- drop --
    pop rax
addr_648:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_649:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_650:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_651:
    ;; -- drop --
    pop rax
addr_652:
    ;; -- end --
addr_653:
    ;; -- end --
addr_654:
    ;; -- end --
addr_655:
    ;; -- drop --
    pop rax
addr_656:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_657:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_658:
    ;; -- end --
    jmp addr_370
addr_659:
    ;; -- drop --
    pop rax
addr_660:
    ;; -- else --
    jmp addr_1335
addr_661:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_662:
    ;; -- push str --
    mov rax, 3
    push rax
    push str_19
addr_663:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_664:
    ;; -- drop --
    pop rax
addr_665:
    ;; -- while --
addr_666:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_667:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_668:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_669:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_670:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_671:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_672:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_673:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_674:
    ;; -- band --
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_675:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_682
addr_676:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_677:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_678:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_679:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_680:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_681:
    ;; -- else --
    jmp addr_685
addr_682:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_683:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_684:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_685:
    ;; -- end --
addr_686:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_693
addr_687:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_688:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_689:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_690:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_691:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_692:
    ;; -- end --
    jmp addr_665
addr_693:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_694:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_695:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_696:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_697:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_698:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_699:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_700:
    ;; -- band --
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_701:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_1204
addr_702:
    ;; -- push str --
    mov rax, 8
    push rax
    push str_20
addr_703:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_704:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_705:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_706:
    ;; -- drop --
    pop rax
addr_707:
    ;; -- push str --
    mov rax, 14
    push rax
    push str_21
addr_708:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_709:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_710:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_711:
    ;; -- drop --
    pop rax
addr_712:
    ;; -- push str --
    mov rax, 7
    push rax
    push str_22
addr_713:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_714:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_715:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_716:
    ;; -- drop --
    pop rax
addr_717:
    ;; -- push str --
    mov rax, 37
    push rax
    push str_23
addr_718:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_719:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_720:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_721:
    ;; -- drop --
    pop rax
addr_722:
    ;; -- push str --
    mov rax, 20
    push rax
    push str_24
addr_723:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_724:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_725:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_726:
    ;; -- drop --
    pop rax
addr_727:
    ;; -- push str --
    mov rax, 30
    push rax
    push str_25
addr_728:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_729:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_730:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_731:
    ;; -- drop --
    pop rax
addr_732:
    ;; -- push str --
    mov rax, 26
    push rax
    push str_26
addr_733:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_734:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_735:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_736:
    ;; -- drop --
    pop rax
addr_737:
    ;; -- push str --
    mov rax, 5
    push rax
    push str_27
addr_738:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_739:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_740:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_741:
    ;; -- drop --
    pop rax
addr_742:
    ;; -- push str --
    mov rax, 21
    push rax
    push str_28
addr_743:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_744:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_745:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_746:
    ;; -- drop --
    pop rax
addr_747:
    ;; -- push str --
    mov rax, 25
    push rax
    push str_29
addr_748:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_749:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_750:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_751:
    ;; -- drop --
    pop rax
addr_752:
    ;; -- push str --
    mov rax, 15
    push rax
    push str_30
addr_753:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_754:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_755:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_756:
    ;; -- drop --
    pop rax
addr_757:
    ;; -- push str --
    mov rax, 21
    push rax
    push str_31
addr_758:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_759:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_760:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_761:
    ;; -- drop --
    pop rax
addr_762:
    ;; -- push str --
    mov rax, 20
    push rax
    push str_32
addr_763:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_764:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_765:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_766:
    ;; -- drop --
    pop rax
addr_767:
    ;; -- push str --
    mov rax, 19
    push rax
    push str_33
addr_768:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_769:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_770:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_771:
    ;; -- drop --
    pop rax
addr_772:
    ;; -- push str --
    mov rax, 29
    push rax
    push str_34
addr_773:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_774:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_775:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_776:
    ;; -- drop --
    pop rax
addr_777:
    ;; -- push str --
    mov rax, 21
    push rax
    push str_35
addr_778:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_779:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_780:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_781:
    ;; -- drop --
    pop rax
addr_782:
    ;; -- push str --
    mov rax, 21
    push rax
    push str_36
addr_783:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_784:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_785:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_786:
    ;; -- drop --
    pop rax
addr_787:
    ;; -- push str --
    mov rax, 20
    push rax
    push str_37
addr_788:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_789:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_790:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_791:
    ;; -- drop --
    pop rax
addr_792:
    ;; -- push str --
    mov rax, 27
    push rax
    push str_38
addr_793:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_794:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_795:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_796:
    ;; -- drop --
    pop rax
addr_797:
    ;; -- push str --
    mov rax, 21
    push rax
    push str_39
addr_798:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_799:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_800:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_801:
    ;; -- drop --
    pop rax
addr_802:
    ;; -- push str --
    mov rax, 21
    push rax
    push str_40
addr_803:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_804:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_805:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_806:
    ;; -- drop --
    pop rax
addr_807:
    ;; -- push str --
    mov rax, 21
    push rax
    push str_41
addr_808:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_809:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_810:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_811:
    ;; -- drop --
    pop rax
addr_812:
    ;; -- push str --
    mov rax, 19
    push rax
    push str_42
addr_813:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_814:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_815:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_816:
    ;; -- drop --
    pop rax
addr_817:
    ;; -- push str --
    mov rax, 19
    push rax
    push str_43
addr_818:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_819:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_820:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_821:
    ;; -- drop --
    pop rax
addr_822:
    ;; -- push str --
    mov rax, 16
    push rax
    push str_44
addr_823:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_824:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_825:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_826:
    ;; -- drop --
    pop rax
addr_827:
    ;; -- push str --
    mov rax, 26
    push rax
    push str_45
addr_828:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_829:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_830:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_831:
    ;; -- drop --
    pop rax
addr_832:
    ;; -- push str --
    mov rax, 19
    push rax
    push str_46
addr_833:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_834:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_835:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_836:
    ;; -- drop --
    pop rax
addr_837:
    ;; -- push str --
    mov rax, 21
    push rax
    push str_47
addr_838:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_839:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_840:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_841:
    ;; -- drop --
    pop rax
addr_842:
    ;; -- push str --
    mov rax, 21
    push rax
    push str_48
addr_843:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_844:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_845:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_846:
    ;; -- drop --
    pop rax
addr_847:
    ;; -- push str --
    mov rax, 30
    push rax
    push str_49
addr_848:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_849:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_850:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_851:
    ;; -- drop --
    pop rax
addr_852:
    ;; -- push str --
    mov rax, 20
    push rax
    push str_50
addr_853:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_854:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_855:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_856:
    ;; -- drop --
    pop rax
addr_857:
    ;; -- push str --
    mov rax, 19
    push rax
    push str_51
addr_858:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_859:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_860:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_861:
    ;; -- drop --
    pop rax
addr_862:
    ;; -- push str --
    mov rax, 12
    push rax
    push str_52
addr_863:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_864:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_865:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_866:
    ;; -- drop --
    pop rax
addr_867:
    ;; -- push str --
    mov rax, 20
    push rax
    push str_53
addr_868:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_869:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_870:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_871:
    ;; -- drop --
    pop rax
addr_872:
    ;; -- push str --
    mov rax, 8
    push rax
    push str_54
addr_873:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_874:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_875:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_876:
    ;; -- drop --
    pop rax
addr_877:
    ;; -- push str --
    mov rax, 14
    push rax
    push str_55
addr_878:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_879:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_880:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_881:
    ;; -- drop --
    pop rax
addr_882:
    ;; -- push str --
    mov rax, 8
    push rax
    push str_56
addr_883:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_884:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_885:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_886:
    ;; -- drop --
    pop rax
addr_887:
    ;; -- push str --
    mov rax, 24
    push rax
    push str_57
addr_888:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_889:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_890:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_891:
    ;; -- drop --
    pop rax
addr_892:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_893:
    ;; -- while --
addr_894:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_895:
    ;; -- mem --
    push mem
addr_896:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_897:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_898:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_899:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_900:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_901:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_902:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_903:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_904:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_905:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_906:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_1122
addr_907:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_908:
    ;; -- push int 16 --
    mov rax, 16
    push rax
addr_909:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_910:
    ;; -- mem --
    push mem
addr_911:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_912:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_913:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_914:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_915:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_916:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_917:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_918:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_919:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_920:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_921:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_922:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_923:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_924:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_925:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_926:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_1049
addr_927:
    ;; -- push str --
    mov rax, 19
    push rax
    push str_58
addr_928:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_929:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_930:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_931:
    ;; -- drop --
    pop rax
addr_932:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_933:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_934:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_935:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_936:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_937:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_938:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_939:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_946
addr_940:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_59
addr_941:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_942:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_943:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_944:
    ;; -- drop --
    pop rax
addr_945:
    ;; -- else --
    jmp addr_978
addr_946:
    ;; -- mem --
    push mem
addr_947:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_948:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_949:
    ;; -- while --
addr_950:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_951:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_952:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_953:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_967
addr_954:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_955:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_956:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_957:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_958:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_959:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_960:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_961:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_962:
    ;; -- push int 48 --
    mov rax, 48
    push rax
addr_963:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_964:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_965:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_966:
    ;; -- end --
    jmp addr_949
addr_967:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_968:
    ;; -- mem --
    push mem
addr_969:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_970:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_971:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_972:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_973:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_974:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_975:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_976:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_977:
    ;; -- drop --
    pop rax
addr_978:
    ;; -- end --
addr_979:
    ;; -- drop --
    pop rax
addr_980:
    ;; -- push str --
    mov rax, 4
    push rax
    push str_60
addr_981:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_982:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_983:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_984:
    ;; -- drop --
    pop rax
addr_985:
    ;; -- push str --
    mov rax, 13
    push rax
    push str_61
addr_986:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_987:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_988:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_989:
    ;; -- drop --
    pop rax
addr_990:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_991:
    ;; -- push int 8 --
    mov rax, 8
    push rax
addr_992:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_993:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_994:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_995:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_996:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_997:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_1004
addr_998:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_62
addr_999:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1000:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1001:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1002:
    ;; -- drop --
    pop rax
addr_1003:
    ;; -- else --
    jmp addr_1036
addr_1004:
    ;; -- mem --
    push mem
addr_1005:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_1006:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1007:
    ;; -- while --
addr_1008:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1009:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1010:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1011:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_1025
addr_1012:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1013:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1014:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1015:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1016:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_1017:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_1018:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1019:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1020:
    ;; -- push int 48 --
    mov rax, 48
    push rax
addr_1021:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1022:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_1023:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1024:
    ;; -- end --
    jmp addr_1007
addr_1025:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1026:
    ;; -- mem --
    push mem
addr_1027:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_1028:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1029:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1030:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1031:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1032:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1033:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1034:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1035:
    ;; -- drop --
    pop rax
addr_1036:
    ;; -- end --
addr_1037:
    ;; -- drop --
    pop rax
addr_1038:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_63
addr_1039:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1040:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1041:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1042:
    ;; -- drop --
    pop rax
addr_1043:
    ;; -- push str --
    mov rax, 13
    push rax
    push str_64
addr_1044:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1045:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1046:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1047:
    ;; -- drop --
    pop rax
addr_1048:
    ;; -- else --
    jmp addr_1117
addr_1049:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1050:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1051:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1052:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1053:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_1080
addr_1054:
    ;; -- push str --
    mov rax, 18
    push rax
    push str_65
addr_1055:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1056:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1057:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1058:
    ;; -- drop --
    pop rax
addr_1059:
    ;; -- push str --
    mov rax, 12
    push rax
    push str_66
addr_1060:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1061:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1062:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1063:
    ;; -- drop --
    pop rax
addr_1064:
    ;; -- push str --
    mov rax, 12
    push rax
    push str_67
addr_1065:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1066:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1067:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1068:
    ;; -- drop --
    pop rax
addr_1069:
    ;; -- push str --
    mov rax, 17
    push rax
    push str_68
addr_1070:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1071:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1072:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1073:
    ;; -- drop --
    pop rax
addr_1074:
    ;; -- push str --
    mov rax, 13
    push rax
    push str_69
addr_1075:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1076:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1077:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1078:
    ;; -- drop --
    pop rax
addr_1079:
    ;; -- else --
    jmp addr_1116
addr_1080:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1081:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1082:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1083:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1084:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_1101
addr_1085:
    ;; -- push str --
    mov rax, 19
    push rax
    push str_70
addr_1086:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1087:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1088:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1089:
    ;; -- drop --
    pop rax
addr_1090:
    ;; -- push str --
    mov rax, 12
    push rax
    push str_71
addr_1091:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1092:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1093:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1094:
    ;; -- drop --
    pop rax
addr_1095:
    ;; -- push str --
    mov rax, 15
    push rax
    push str_72
addr_1096:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1097:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1098:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1099:
    ;; -- drop --
    pop rax
addr_1100:
    ;; -- else --
    jmp addr_1115
addr_1101:
    ;; -- here --
    mov rax, 17
    push rax
    push str_73
addr_1102:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1103:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1104:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1105:
    ;; -- drop --
    pop rax
addr_1106:
    ;; -- push str --
    mov rax, 14
    push rax
    push str_74
addr_1107:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1108:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1109:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1110:
    ;; -- drop --
    pop rax
addr_1111:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1112:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_1113:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_1114:
    ;; -- drop --
    pop rax
addr_1115:
    ;; -- end --
addr_1116:
    ;; -- end --
addr_1117:
    ;; -- end --
addr_1118:
    ;; -- drop --
    pop rax
addr_1119:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1120:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1121:
    ;; -- end --
    jmp addr_893
addr_1122:
    ;; -- drop --
    pop rax
addr_1123:
    ;; -- push str --
    mov rax, 16
    push rax
    push str_75
addr_1124:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1125:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1126:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1127:
    ;; -- drop --
    pop rax
addr_1128:
    ;; -- push str --
    mov rax, 15
    push rax
    push str_76
addr_1129:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1130:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1131:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1132:
    ;; -- drop --
    pop rax
addr_1133:
    ;; -- push str --
    mov rax, 12
    push rax
    push str_77
addr_1134:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1135:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1136:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1137:
    ;; -- drop --
    pop rax
addr_1138:
    ;; -- push str --
    mov rax, 13
    push rax
    push str_78
addr_1139:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1140:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1141:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1142:
    ;; -- drop --
    pop rax
addr_1143:
    ;; -- push str --
    mov rax, 17
    push rax
    push str_79
addr_1144:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1145:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1146:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1147:
    ;; -- drop --
    pop rax
addr_1148:
    ;; -- push str --
    mov rax, 10
    push rax
    push str_80
addr_1149:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1150:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1151:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1152:
    ;; -- drop --
    pop rax
addr_1153:
    ;; -- push int 640000 --
    mov rax, 640000
    push rax
addr_1154:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1155:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1156:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1157:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_1164
addr_1158:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_81
addr_1159:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1160:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1161:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1162:
    ;; -- drop --
    pop rax
addr_1163:
    ;; -- else --
    jmp addr_1196
addr_1164:
    ;; -- mem --
    push mem
addr_1165:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_1166:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1167:
    ;; -- while --
addr_1168:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1169:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1170:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1171:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_1185
addr_1172:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1173:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1174:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1175:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1176:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_1177:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_1178:
    ;; -- rot --
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1179:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1180:
    ;; -- push int 48 --
    mov rax, 48
    push rax
addr_1181:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1182:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_1183:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1184:
    ;; -- end --
    jmp addr_1167
addr_1185:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1186:
    ;; -- mem --
    push mem
addr_1187:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_1188:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1189:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1190:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1191:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1192:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1193:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1194:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1195:
    ;; -- drop --
    pop rax
addr_1196:
    ;; -- end --
addr_1197:
    ;; -- drop --
    pop rax
addr_1198:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_82
addr_1199:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1200:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1201:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1202:
    ;; -- drop --
    pop rax
addr_1203:
    ;; -- else --
    jmp addr_1334
addr_1204:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1205:
    ;; -- push str --
    mov rax, 3
    push rax
    push str_83
addr_1206:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1207:
    ;; -- drop --
    pop rax
addr_1208:
    ;; -- while --
addr_1209:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1210:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1211:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1212:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1213:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1214:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1215:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1216:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1217:
    ;; -- band --
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1218:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_1225
addr_1219:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1220:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1221:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1222:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1223:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1224:
    ;; -- else --
    jmp addr_1228
addr_1225:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1226:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1227:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1228:
    ;; -- end --
addr_1229:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_1236
addr_1230:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1231:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1232:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1233:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1234:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1235:
    ;; -- end --
    jmp addr_1208
addr_1236:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1237:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1238:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1239:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1240:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1241:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1242:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1243:
    ;; -- band --
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1244:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_1275
addr_1245:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_84
addr_1246:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1247:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1248:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1249:
    ;; -- drop --
    pop rax
addr_1250:
    ;; -- push str --
    mov rax, 15
    push rax
    push str_85
addr_1251:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1252:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1253:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1254:
    ;; -- drop --
    pop rax
addr_1255:
    ;; -- push str --
    mov rax, 42
    push rax
    push str_86
addr_1256:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1257:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1258:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1259:
    ;; -- drop --
    pop rax
addr_1260:
    ;; -- push str --
    mov rax, 40
    push rax
    push str_87
addr_1261:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1262:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1263:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1264:
    ;; -- drop --
    pop rax
addr_1265:
    ;; -- push str --
    mov rax, 67
    push rax
    push str_88
addr_1266:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1267:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1268:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1269:
    ;; -- drop --
    pop rax
addr_1270:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1271:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_1272:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_1273:
    ;; -- drop --
    pop rax
addr_1274:
    ;; -- else --
    jmp addr_1333
addr_1275:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_89
addr_1276:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1277:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1278:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1279:
    ;; -- drop --
    pop rax
addr_1280:
    ;; -- push str --
    mov rax, 15
    push rax
    push str_90
addr_1281:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1282:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1283:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1284:
    ;; -- drop --
    pop rax
addr_1285:
    ;; -- push str --
    mov rax, 42
    push rax
    push str_91
addr_1286:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1287:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1288:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1289:
    ;; -- drop --
    pop rax
addr_1290:
    ;; -- push str --
    mov rax, 40
    push rax
    push str_92
addr_1291:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1292:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1293:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1294:
    ;; -- drop --
    pop rax
addr_1295:
    ;; -- push str --
    mov rax, 67
    push rax
    push str_93
addr_1296:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1297:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1298:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1299:
    ;; -- drop --
    pop rax
addr_1300:
    ;; -- push str --
    mov rax, 27
    push rax
    push str_94
addr_1301:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1302:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1303:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1304:
    ;; -- drop --
    pop rax
addr_1305:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1306:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1307:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1308:
    ;; -- while --
addr_1309:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_1310:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1311:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1312:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1313:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_1317
addr_1314:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1315:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1316:
    ;; -- end --
    jmp addr_1308
addr_1317:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1318:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1319:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_1320:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1321:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1322:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1323:
    ;; -- drop --
    pop rax
addr_1324:
    ;; -- push str --
    mov rax, 2
    push rax
    push str_95
addr_1325:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1326:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1327:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1328:
    ;; -- drop --
    pop rax
addr_1329:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1330:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_1331:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_1332:
    ;; -- drop --
    pop rax
addr_1333:
    ;; -- end --
addr_1334:
    ;; -- end --
addr_1335:
    ;; -- end --
addr_1336:
    ;; -- drop --
    pop rax
addr_1337:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x55,0x73,0x61,0x67,0x65,0x3a,0x20,0x73,0x6b,0x6f,0x72,0x70,0x69,0x6f,0x20,0x3c,0x53,0x55,0x42,0x43,0x4f,0x4d,0x4d,0x41,0x4e,0x44,0x3e,0xa
str_1: db 0x20,0x20,0x53,0x55,0x42,0x43,0x4f,0x4d,0x4d,0x41,0x4e,0x44,0x53,0x3a,0xa
str_2: db 0x20,0x20,0x20,0x20,0x2d,0x73,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x53,0x69,0x6d,0x75,0x6c,0x61,0x74,0x65,0x20,0x74,0x68,0x65,0x20,0x70,0x72,0x6f,0x67,0x72,0x61,0x6d,0x2e,0xa
str_3: db 0x20,0x20,0x20,0x20,0x2d,0x63,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x43,0x6f,0x6d,0x70,0x69,0x6c,0x65,0x20,0x74,0x68,0x65,0x20,0x70,0x72,0x6f,0x67,0x72,0x61,0x6d,0xa
str_4: db 0x20,0x20,0x20,0x20,0x2d,0x68,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x50,0x72,0x69,0x6e,0x74,0x20,0x74,0x68,0x69,0x73,0x20,0x68,0x65,0x6c,0x70,0x20,0x74,0x6f,0x20,0x73,0x74,0x64,0x65,0x72,0x72,0x20,0x61,0x6e,0x64,0x20,0x65,0x78,0x69,0x74,0x20,0x77,0x69,0x74,0x68,0x20,0x30,0x20,0x63,0x6f,0x64,0x65,0xa
str_5: db 0x45,0x52,0x52,0x4f,0x52,0x3a,0x20,0x73,0x75,0x62,0x63,0x6f,0x6d,0x6d,0x61,0x6e,0x64,0x20,0x69,0x73,0x20,0x6e,0x6f,0x74,0x20,0x70,0x72,0x6f,0x76,0x69,0x64,0x65,0x64,0xa
str_6: db 0x2d,0x73,0x0
str_7: db 0x73,0x6b,0x6f,0x72,0x70,0x69,0x6f,0x2e,0x73,0x6b,0x6f,0x3a,0x32,0x32,0x3a,0x35
str_8: db 0x3a,0x20,0x45,0x52,0x52,0x4f,0x52,0x3a,0x20,0x64,0x61,0x74,0x61,0x20,0x73,0x74,0x61,0x63,0x6b,0x20,0x6f,0x76,0x65,0x72,0x66,0x6c,0x6f,0x77,0x20,0x69,0x6e,0x20,0x73,0x69,0x6d,0x75,0x6c,0x61,0x74,0x69,0x6f,0x6e,0x20,0x6d,0x6f,0x64,0x65
str_9: db 0x73,0x6b,0x6f,0x72,0x70,0x69,0x6f,0x2e,0x73,0x6b,0x6f,0x3a,0x33,0x30,0x3a,0x35
str_10: db 0x3a,0x20,0x45,0x52,0x52,0x4f,0x52,0x3a,0x20,0x64,0x61,0x74,0x61,0x20,0x73,0x74,0x61,0x63,0x6b,0x20,0x75,0x6e,0x64,0x65,0x72,0x66,0x6c,0x6f,0x77,0x20,0x69,0x6e,0x20,0x73,0x69,0x6d,0x75,0x6c,0x61,0x74,0x69,0x6f,0x6e,0x20,0x6d,0x6f,0x64,0x65
str_11: db 0x73,0x6b,0x6f,0x72,0x70,0x69,0x6f,0x2e,0x73,0x6b,0x6f,0x3a,0x33,0x30,0x3a,0x35
str_12: db 0x3a,0x20,0x45,0x52,0x52,0x4f,0x52,0x3a,0x20,0x64,0x61,0x74,0x61,0x20,0x73,0x74,0x61,0x63,0x6b,0x20,0x75,0x6e,0x64,0x65,0x72,0x66,0x6c,0x6f,0x77,0x20,0x69,0x6e,0x20,0x73,0x69,0x6d,0x75,0x6c,0x61,0x74,0x69,0x6f,0x6e,0x20,0x6d,0x6f,0x64,0x65
str_13: db 0x73,0x6b,0x6f,0x72,0x70,0x69,0x6f,0x2e,0x73,0x6b,0x6f,0x3a,0x32,0x32,0x3a,0x35
str_14: db 0x3a,0x20,0x45,0x52,0x52,0x4f,0x52,0x3a,0x20,0x64,0x61,0x74,0x61,0x20,0x73,0x74,0x61,0x63,0x6b,0x20,0x6f,0x76,0x65,0x72,0x66,0x6c,0x6f,0x77,0x20,0x69,0x6e,0x20,0x73,0x69,0x6d,0x75,0x6c,0x61,0x74,0x69,0x6f,0x6e,0x20,0x6d,0x6f,0x64,0x65
str_15: db 0x73,0x6b,0x6f,0x72,0x70,0x69,0x6f,0x2e,0x73,0x6b,0x6f,0x3a,0x33,0x30,0x3a,0x35
str_16: db 0x3a,0x20,0x45,0x52,0x52,0x4f,0x52,0x3a,0x20,0x64,0x61,0x74,0x61,0x20,0x73,0x74,0x61,0x63,0x6b,0x20,0x75,0x6e,0x64,0x65,0x72,0x66,0x6c,0x6f,0x77,0x20,0x69,0x6e,0x20,0x73,0x69,0x6d,0x75,0x6c,0x61,0x74,0x69,0x6f,0x6e,0x20,0x6d,0x6f,0x64,0x65
str_17: db 0x73,0x6b,0x6f,0x72,0x70,0x69,0x6f,0x2e,0x73,0x6b,0x6f,0x3a,0x31,0x36,0x31,0x3a,0x38
str_18: db 0x3a,0x20,0x75,0x6e,0x72,0x65,0x61,0x63,0x68,0x61,0x62,0x6c,0x65,0xa
str_19: db 0x2d,0x63,0x0
str_20: db 0x42,0x49,0x54,0x53,0x20,0x36,0x34,0xa
str_21: db 0x73,0x65,0x67,0x6d,0x65,0x6e,0x74,0x20,0x2e,0x74,0x65,0x78,0x74,0xa
str_22: db 0x70,0x72,0x69,0x6e,0x74,0x3a,0xa
str_23: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x20,0x20,0x20,0x20,0x72,0x39,0x2c,0x20,0x2d,0x33,0x36,0x38,0x39,0x33,0x34,0x38,0x38,0x31,0x34,0x37,0x34,0x31,0x39,0x31,0x30,0x33,0x32,0x33,0xa
str_24: db 0x20,0x20,0x20,0x20,0x73,0x75,0x62,0x20,0x20,0x20,0x20,0x20,0x72,0x73,0x70,0x2c,0x20,0x34,0x30,0xa
str_25: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x20,0x20,0x20,0x20,0x42,0x59,0x54,0x45,0x20,0x5b,0x72,0x73,0x70,0x2b,0x33,0x31,0x5d,0x2c,0x20,0x31,0x30,0xa
str_26: db 0x20,0x20,0x20,0x20,0x6c,0x65,0x61,0x20,0x20,0x20,0x20,0x20,0x72,0x63,0x78,0x2c,0x20,0x5b,0x72,0x73,0x70,0x2b,0x33,0x30,0x5d,0xa
str_27: db 0x2e,0x4c,0x32,0x3a,0xa
str_28: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x20,0x20,0x20,0x20,0x72,0x61,0x78,0x2c,0x20,0x72,0x64,0x69,0xa
str_29: db 0x20,0x20,0x20,0x20,0x6c,0x65,0x61,0x20,0x20,0x20,0x20,0x20,0x72,0x38,0x2c,0x20,0x5b,0x72,0x73,0x70,0x2b,0x33,0x32,0x5d,0xa
str_30: db 0x20,0x20,0x20,0x20,0x6d,0x75,0x6c,0x20,0x20,0x20,0x20,0x20,0x72,0x39,0xa
str_31: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x20,0x20,0x20,0x20,0x72,0x61,0x78,0x2c,0x20,0x72,0x64,0x69,0xa
str_32: db 0x20,0x20,0x20,0x20,0x73,0x75,0x62,0x20,0x20,0x20,0x20,0x20,0x72,0x38,0x2c,0x20,0x72,0x63,0x78,0xa
str_33: db 0x20,0x20,0x20,0x20,0x73,0x68,0x72,0x20,0x20,0x20,0x20,0x20,0x72,0x64,0x78,0x2c,0x20,0x33,0xa
str_34: db 0x20,0x20,0x20,0x20,0x6c,0x65,0x61,0x20,0x20,0x20,0x20,0x20,0x72,0x73,0x69,0x2c,0x20,0x5b,0x72,0x64,0x78,0x2b,0x72,0x64,0x78,0x2a,0x34,0x5d,0xa
str_35: db 0x20,0x20,0x20,0x20,0x61,0x64,0x64,0x20,0x20,0x20,0x20,0x20,0x72,0x73,0x69,0x2c,0x20,0x72,0x73,0x69,0xa
str_36: db 0x20,0x20,0x20,0x20,0x73,0x75,0x62,0x20,0x20,0x20,0x20,0x20,0x72,0x61,0x78,0x2c,0x20,0x72,0x73,0x69,0xa
str_37: db 0x20,0x20,0x20,0x20,0x61,0x64,0x64,0x20,0x20,0x20,0x20,0x20,0x65,0x61,0x78,0x2c,0x20,0x34,0x38,0xa
str_38: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x20,0x20,0x20,0x20,0x42,0x59,0x54,0x45,0x20,0x5b,0x72,0x63,0x78,0x5d,0x2c,0x20,0x61,0x6c,0xa
str_39: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x20,0x20,0x20,0x20,0x72,0x61,0x78,0x2c,0x20,0x72,0x64,0x69,0xa
str_40: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x20,0x20,0x20,0x20,0x72,0x64,0x69,0x2c,0x20,0x72,0x64,0x78,0xa
str_41: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x20,0x20,0x20,0x20,0x72,0x64,0x78,0x2c,0x20,0x72,0x63,0x78,0xa
str_42: db 0x20,0x20,0x20,0x20,0x73,0x75,0x62,0x20,0x20,0x20,0x20,0x20,0x72,0x63,0x78,0x2c,0x20,0x31,0xa
str_43: db 0x20,0x20,0x20,0x20,0x63,0x6d,0x70,0x20,0x20,0x20,0x20,0x20,0x72,0x61,0x78,0x2c,0x20,0x39,0xa
str_44: db 0x20,0x20,0x20,0x20,0x6a,0x61,0x20,0x20,0x20,0x20,0x20,0x20,0x2e,0x4c,0x32,0xa
str_45: db 0x20,0x20,0x20,0x20,0x6c,0x65,0x61,0x20,0x20,0x20,0x20,0x20,0x72,0x61,0x78,0x2c,0x20,0x5b,0x72,0x73,0x70,0x2b,0x33,0x32,0x5d,0xa
str_46: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x20,0x20,0x20,0x20,0x65,0x64,0x69,0x2c,0x20,0x31,0xa
str_47: db 0x20,0x20,0x20,0x20,0x73,0x75,0x62,0x20,0x20,0x20,0x20,0x20,0x72,0x64,0x78,0x2c,0x20,0x72,0x61,0x78,0xa
str_48: db 0x20,0x20,0x20,0x20,0x78,0x6f,0x72,0x20,0x20,0x20,0x20,0x20,0x65,0x61,0x78,0x2c,0x20,0x65,0x61,0x78,0xa
str_49: db 0x20,0x20,0x20,0x20,0x6c,0x65,0x61,0x20,0x20,0x20,0x20,0x20,0x72,0x73,0x69,0x2c,0x20,0x5b,0x72,0x73,0x70,0x2b,0x33,0x32,0x2b,0x72,0x64,0x78,0x5d,0xa
str_50: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x20,0x20,0x20,0x20,0x72,0x64,0x78,0x2c,0x20,0x72,0x38,0xa
str_51: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x20,0x20,0x20,0x20,0x72,0x61,0x78,0x2c,0x20,0x31,0xa
str_52: db 0x20,0x20,0x20,0x20,0x73,0x79,0x73,0x63,0x61,0x6c,0x6c,0xa
str_53: db 0x20,0x20,0x20,0x20,0x61,0x64,0x64,0x20,0x20,0x20,0x20,0x20,0x72,0x73,0x70,0x2c,0x20,0x34,0x30,0xa
str_54: db 0x20,0x20,0x20,0x20,0x72,0x65,0x74,0xa
str_55: db 0x67,0x6c,0x6f,0x62,0x61,0x6c,0x20,0x5f,0x73,0x74,0x61,0x72,0x74,0xa
str_56: db 0x5f,0x73,0x74,0x61,0x72,0x74,0x3a,0xa
str_57: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x5b,0x61,0x72,0x67,0x73,0x5f,0x70,0x74,0x72,0x5d,0x2c,0x20,0x72,0x73,0x70,0xa
str_58: db 0x20,0x20,0x20,0x20,0x3b,0x3b,0x20,0x2d,0x2d,0x20,0x70,0x75,0x73,0x68,0x20,0x69,0x6e,0x74,0x20
str_59: db 0x30
str_60: db 0x20,0x2d,0x2d,0xa
str_61: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x72,0x61,0x78,0x2c,0x20
str_62: db 0x30
str_63: db 0xa
str_64: db 0x20,0x20,0x20,0x20,0x70,0x75,0x73,0x68,0x20,0x72,0x61,0x78,0xa
str_65: db 0x20,0x20,0x20,0x20,0x3b,0x3b,0x20,0x2d,0x2d,0x20,0x70,0x6c,0x75,0x73,0x20,0x2d,0x2d,0xa
str_66: db 0x20,0x20,0x20,0x20,0x70,0x6f,0x70,0x20,0x72,0x61,0x78,0xa
str_67: db 0x20,0x20,0x20,0x20,0x70,0x6f,0x70,0x20,0x72,0x62,0x78,0xa
str_68: db 0x20,0x20,0x20,0x20,0x61,0x64,0x64,0x20,0x72,0x61,0x78,0x2c,0x20,0x72,0x62,0x78,0xa
str_69: db 0x20,0x20,0x20,0x20,0x70,0x75,0x73,0x68,0x20,0x72,0x61,0x78,0xa
str_70: db 0x20,0x20,0x20,0x20,0x3b,0x3b,0x20,0x2d,0x2d,0x20,0x70,0x72,0x69,0x6e,0x74,0x20,0x2d,0x2d,0xa
str_71: db 0x20,0x20,0x20,0x20,0x70,0x6f,0x70,0x20,0x72,0x64,0x69,0xa
str_72: db 0x20,0x20,0x20,0x20,0x63,0x61,0x6c,0x6c,0x20,0x70,0x72,0x69,0x6e,0x74,0xa
str_73: db 0x73,0x6b,0x6f,0x72,0x70,0x69,0x6f,0x2e,0x73,0x6b,0x6f,0x3a,0x31,0x33,0x30,0x3a,0x38
str_74: db 0x3a,0x20,0x75,0x6e,0x72,0x65,0x61,0x63,0x68,0x61,0x62,0x6c,0x65,0xa
str_75: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x72,0x61,0x78,0x2c,0x20,0x36,0x30,0xa
str_76: db 0x20,0x20,0x20,0x20,0x6d,0x6f,0x76,0x20,0x72,0x64,0x69,0x2c,0x20,0x30,0xa
str_77: db 0x20,0x20,0x20,0x20,0x73,0x79,0x73,0x63,0x61,0x6c,0x6c,0xa
str_78: db 0x73,0x65,0x67,0x6d,0x65,0x6e,0x74,0x20,0x2e,0x62,0x73,0x73,0xa
str_79: db 0x61,0x72,0x67,0x73,0x5f,0x70,0x74,0x72,0x3a,0x20,0x72,0x65,0x73,0x71,0x20,0x31,0xa
str_80: db 0x6d,0x65,0x6d,0x3a,0x20,0x72,0x65,0x73,0x62,0x20
str_81: db 0x30
str_82: db 0xa
str_83: db 0x2d,0x68,0x0
str_84: db 0x55,0x73,0x61,0x67,0x65,0x3a,0x20,0x73,0x6b,0x6f,0x72,0x70,0x69,0x6f,0x20,0x3c,0x53,0x55,0x42,0x43,0x4f,0x4d,0x4d,0x41,0x4e,0x44,0x3e,0xa
str_85: db 0x20,0x20,0x53,0x55,0x42,0x43,0x4f,0x4d,0x4d,0x41,0x4e,0x44,0x53,0x3a,0xa
str_86: db 0x20,0x20,0x20,0x20,0x2d,0x73,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x53,0x69,0x6d,0x75,0x6c,0x61,0x74,0x65,0x20,0x74,0x68,0x65,0x20,0x70,0x72,0x6f,0x67,0x72,0x61,0x6d,0x2e,0xa
str_87: db 0x20,0x20,0x20,0x20,0x2d,0x63,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x43,0x6f,0x6d,0x70,0x69,0x6c,0x65,0x20,0x74,0x68,0x65,0x20,0x70,0x72,0x6f,0x67,0x72,0x61,0x6d,0xa
str_88: db 0x20,0x20,0x20,0x20,0x2d,0x68,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x50,0x72,0x69,0x6e,0x74,0x20,0x74,0x68,0x69,0x73,0x20,0x68,0x65,0x6c,0x70,0x20,0x74,0x6f,0x20,0x73,0x74,0x64,0x65,0x72,0x72,0x20,0x61,0x6e,0x64,0x20,0x65,0x78,0x69,0x74,0x20,0x77,0x69,0x74,0x68,0x20,0x30,0x20,0x63,0x6f,0x64,0x65,0xa
str_89: db 0x55,0x73,0x61,0x67,0x65,0x3a,0x20,0x73,0x6b,0x6f,0x72,0x70,0x69,0x6f,0x20,0x3c,0x53,0x55,0x42,0x43,0x4f,0x4d,0x4d,0x41,0x4e,0x44,0x3e,0xa
str_90: db 0x20,0x20,0x53,0x55,0x42,0x43,0x4f,0x4d,0x4d,0x41,0x4e,0x44,0x53,0x3a,0xa
str_91: db 0x20,0x20,0x20,0x20,0x2d,0x73,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x53,0x69,0x6d,0x75,0x6c,0x61,0x74,0x65,0x20,0x74,0x68,0x65,0x20,0x70,0x72,0x6f,0x67,0x72,0x61,0x6d,0x2e,0xa
str_92: db 0x20,0x20,0x20,0x20,0x2d,0x63,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x43,0x6f,0x6d,0x70,0x69,0x6c,0x65,0x20,0x74,0x68,0x65,0x20,0x70,0x72,0x6f,0x67,0x72,0x61,0x6d,0xa
str_93: db 0x20,0x20,0x20,0x20,0x2d,0x68,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x50,0x72,0x69,0x6e,0x74,0x20,0x74,0x68,0x69,0x73,0x20,0x68,0x65,0x6c,0x70,0x20,0x74,0x6f,0x20,0x73,0x74,0x64,0x65,0x72,0x72,0x20,0x61,0x6e,0x64,0x20,0x65,0x78,0x69,0x74,0x20,0x77,0x69,0x74,0x68,0x20,0x30,0x20,0x63,0x6f,0x64,0x65,0xa
str_94: db 0x45,0x52,0x52,0x4f,0x52,0x3a,0x20,0x75,0x6e,0x6b,0x6e,0x6f,0x77,0x6e,0x20,0x73,0x75,0x62,0x63,0x6f,0x6d,0x6d,0x61,0x6e,0x64,0x20,0x60
str_95: db 0x60,0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
