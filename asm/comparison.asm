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
    ;; -- print --
    pop rdi
    call print
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
    ;; -- print --
    pop rdi
    call print
addr_8:
    ;; -- push str --
    mov rax, 1
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
    ;; -- drop --
    pop rax
addr_13:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_14:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_15:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_16:
    ;; -- print --
    pop rdi
    call print
addr_17:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_18:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_19:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_20:
    ;; -- print --
    pop rdi
    call print
addr_21:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_22:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_23:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_24:
    ;; -- print --
    pop rdi
    call print
addr_25:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_1
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
    ;; -- drop --
    pop rax
addr_30:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_31:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_32:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_33:
    ;; -- print --
    pop rdi
    call print
addr_34:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_35:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_36:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_37:
    ;; -- print --
    pop rdi
    call print
addr_38:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_39:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_40:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_41:
    ;; -- print --
    pop rdi
    call print
addr_42:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_2
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
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_48:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_49:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_50:
    ;; -- print --
    pop rdi
    call print
addr_51:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_52:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_53:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_54:
    ;; -- print --
    pop rdi
    call print
addr_55:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_56:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_57:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_58:
    ;; -- print --
    pop rdi
    call print
addr_59:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_3
addr_60:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_61:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_62:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_63:
    ;; -- drop --
    pop rax
addr_64:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_65:
    ;; -- push int 3 --
    mov rax, 3
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
    ;; -- print --
    pop rdi
    call print
addr_68:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_69:
    ;; -- push int 1 --
    mov rax, 1
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
    ;; -- print --
    pop rdi
    call print
addr_72:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_73:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_74:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_75:
    ;; -- print --
    pop rdi
    call print
addr_76:
    ;; -- push str --
    mov rax, 1
    push rax
    push str_4
addr_77:
    ;; -- push int 1 --
    mov rax, 1
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
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_82:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_83:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_84:
    ;; -- print --
    pop rdi
    call print
addr_85:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_86:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_87:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_88:
    ;; -- print --
    pop rdi
    call print
addr_89:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_90:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_91:
    ;; -- ne --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_92:
    ;; -- print --
    pop rdi
    call print
addr_93:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0xa
str_1: db 0xa
str_2: db 0xa
str_3: db 0xa
str_4: db 0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
