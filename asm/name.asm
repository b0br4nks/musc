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
    mov rax, 19
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
    ;; -- push int 256 --
    mov rax, 256
    push rax
addr_6:
    ;; -- mem --
    push mem
addr_7:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_8:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_9:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_10:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_11:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_12:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_13:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_23
addr_14:
    ;; -- push str --
    mov rax, 36
    push rax
    push str_1
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
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_20:
    ;; -- push int 60 --
    mov rax, 60
    push rax
addr_21:
    ;; -- syscall1 --
    pop rax
    pop rdi
    syscall
    push rax
addr_22:
    ;; -- drop --
    pop rax
addr_23:
    ;; -- end --
addr_24:
    ;; -- mem --
    push mem
addr_25:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_26:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_27:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_28:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_29:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_30:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_31:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_32:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_35
addr_33:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_34:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_35:
    ;; -- end --
addr_36:
    ;; -- push str --
    mov rax, 7
    push rax
    push str_2
addr_37:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_38:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_39:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_40:
    ;; -- drop --
    pop rax
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
    mov rax, 2
    push rax
    push str_3
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
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x57,0x68,0x61,0x74,0x20,0x69,0x73,0x20,0x79,0x6f,0x75,0x72,0x20,0x6e,0x61,0x6d,0x65,0x3f,0x20
str_1: db 0x5b,0x45,0x52,0x52,0x4f,0x52,0x5d,0x20,0x43,0x6f,0x75,0x6c,0x64,0x20,0x6e,0x6f,0x74,0x20,0x72,0x65,0x61,0x64,0x20,0x79,0x6f,0x75,0x72,0x20,0x6e,0x61,0x6d,0x65,0x2e,0x2e,0x2e,0xa
str_2: db 0x48,0x65,0x6c,0x6c,0x6f,0x2c,0x20
str_3: db 0x21,0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
