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
    ;; -- push str --
    mov rax, 13
    push rax
    push str_0
addr_1:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_2:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_3:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_4:
    ;; -- drop --
    pop rax
addr_5:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_1
addr_6:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_7:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_8:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_9:
    ;; -- drop --
    pop rax
addr_10:
    ;; -- push str --
    mov rax, 13
    push rax
    push str_2
addr_11:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_12:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_13:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_14:
    ;; -- drop --
    pop rax
addr_15:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_3
addr_16:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_17:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_18:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_19:
    ;; -- drop --
    pop rax
addr_20:
    ;; -- mem --
    push mem
addr_21:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_22:
    ;; -- push int 72 --
    mov rax, 72
    push rax
addr_23:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_24:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_25:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_26:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_27:
    ;; -- push int 101 --
    mov rax, 101
    push rax
addr_28:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_29:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_30:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_31:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_32:
    ;; -- push int 108 --
    mov rax, 108
    push rax
addr_33:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_34:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_35:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_36:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_37:
    ;; -- push int 108 --
    mov rax, 108
    push rax
addr_38:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_39:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_40:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_41:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_42:
    ;; -- push int 111 --
    mov rax, 111
    push rax
addr_43:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_44:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_45:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_46:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_47:
    ;; -- push int 44 --
    mov rax, 44
    push rax
addr_48:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_49:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_50:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_51:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_52:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_53:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_54:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_55:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_56:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_57:
    ;; -- push int 87 --
    mov rax, 87
    push rax
addr_58:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_59:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_60:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_61:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_62:
    ;; -- push int 111 --
    mov rax, 111
    push rax
addr_63:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_64:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_65:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_66:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_67:
    ;; -- push int 114 --
    mov rax, 114
    push rax
addr_68:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_69:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_70:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_71:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_72:
    ;; -- push int 108 --
    mov rax, 108
    push rax
addr_73:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_74:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_75:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
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
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_82:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_83:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_84:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_85:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_86:
    ;; -- mem --
    push mem
addr_87:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_88:
    ;; -- mem --
    push mem
addr_89:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_90:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_91:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_92:
    ;; -- drop --
    pop rax
addr_93:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x48,0x65,0x6c,0x6c,0x6f,0x2c,0x20,0x57,0x6f,0x72,0x6c,0x64,0xa
str_1: db 0xa
str_2: db 0x48,0x65,0x6c,0x6c,0x6f,0x2c,0x20,0x57,0x6f,0x72,0x6c,0x64,0xa
str_3: db 0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
