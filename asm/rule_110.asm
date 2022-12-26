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
    ;; -- push int 100 --
    mov rax, 100
    push rax
addr_2:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_3:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_4:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_5:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_6:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_7:
    ;; -- mem --
    push mem
addr_8:
    ;; -- push int 100 --
    mov rax, 100
    push rax
addr_9:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_10:
    ;; -- push int 100 --
    mov rax, 100
    push rax
addr_11:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_12:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_13:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_14:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_15:
    ;; -- while --
addr_16:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_17:
    ;; -- push int 100 --
    mov rax, 100
    push rax
addr_18:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_19:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_20:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_21:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_115
addr_22:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_23:
    ;; -- while --
addr_24:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_25:
    ;; -- push int 100 --
    mov rax, 100
    push rax
addr_26:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_27:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_54
addr_28:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_29:
    ;; -- mem --
    push mem
addr_30:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_31:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_32:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_33:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_34:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_43
addr_35:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_36:
    ;; -- mem --
    push mem
addr_37:
    ;; -- push int 100 --
    mov rax, 100
    push rax
addr_38:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_39:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_40:
    ;; -- push int 36 --
    mov rax, 36
    push rax
addr_41:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_42:
    ;; -- else --
    jmp addr_50
addr_43:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_44:
    ;; -- mem --
    push mem
addr_45:
    ;; -- push int 100 --
    mov rax, 100
    push rax
addr_46:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_47:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_48:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_49:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_50:
    ;; -- end --
addr_51:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_52:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_53:
    ;; -- end --
    jmp addr_23
addr_54:
    ;; -- drop --
    pop rax
addr_55:
    ;; -- push int 100 --
    mov rax, 100
    push rax
addr_56:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_57:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_58:
    ;; -- mem --
    push mem
addr_59:
    ;; -- push int 100 --
    mov rax, 100
    push rax
addr_60:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_61:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_62:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_63:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_64:
    ;; -- drop --
    pop rax
addr_65:
    ;; -- mem --
    push mem
addr_66:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_67:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_68:
    ;; -- lsh --
    pop rcx
    pop rbx
    shl rbx, cl
    push rbx
addr_69:
    ;; -- mem --
    push mem
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
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_73:
    ;; -- bor --
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_74:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_75:
    ;; -- while --
addr_76:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_77:
    ;; -- push int 100 --
    mov rax, 100
    push rax
addr_78:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_79:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_80:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_81:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_110
addr_82:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_83:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_84:
    ;; -- lsh --
    pop rcx
    pop rbx
    shl rbx, cl
    push rbx
addr_85:
    ;; -- push int 7 --
    mov rax, 7
    push rax
addr_86:
    ;; -- band --
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_87:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_88:
    ;; -- mem --
    push mem
addr_89:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_93:
    ;; -- bor --
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_94:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_95:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_96:
    ;; -- push int 110 --
    mov rax, 110
    push rax
addr_97:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_98:
    ;; -- rsh --
    pop rcx
    pop rbx
    shr rbx, cl
    push rbx
addr_99:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_100:
    ;; -- band --
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_101:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_102:
    ;; -- mem --
    push mem
addr_103:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_104:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_105:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_106:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
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
    ;; -- end --
    jmp addr_75
addr_110:
    ;; -- drop --
    pop rax
addr_111:
    ;; -- drop --
    pop rax
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
    jmp addr_15
addr_115:
    ;; -- drop --
    pop rax
addr_116:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
segment .bss
args_ptr: resq 1
mem: resb 640000
