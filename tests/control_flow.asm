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
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_1:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_2:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3:
    ;; -- push int 65 --
    mov rax, 65
    push rax
addr_4:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_5:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_8
addr_6:
    ;; -- push int 64 --
    mov rax, 64
    push rax
addr_7:
    ;; -- else --
    jmp addr_9
addr_8:
    ;; -- push int 128 --
    mov rax, 128
    push rax
addr_9:
    ;; -- end --
addr_10:
    ;; -- print --
    pop rdi
    call print
addr_11:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_0
addr_12:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_13:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_14:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_15:
    ;; -- drop --
    pop rax
addr_16:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_17:
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_18:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_19:
    ;; -- push int 64 --
    mov rax, 64
    push rax
addr_20:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_21:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_24
addr_22:
    ;; -- push int 64 --
    mov rax, 64
    push rax
addr_23:
    ;; -- else --
    jmp addr_25
addr_24:
    ;; -- push int 128 --
    mov rax, 128
    push rax
addr_25:
    ;; -- end --
addr_26:
    ;; -- print --
    pop rdi
    call print
addr_27:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_1
addr_28:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_29:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_30:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_31:
    ;; -- drop --
    pop rax
addr_32:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_33:
    ;; -- while --
addr_34:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_35:
    ;; -- push int -1 --
    mov rax, -1
    push rax
addr_36:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_37:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_43
addr_38:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_39:
    ;; -- print --
    pop rdi
    call print
addr_40:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_41:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_42:
    ;; -- end --
    jmp addr_33
addr_43:
    ;; -- drop --
    pop rax
addr_44:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_2
addr_45:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_46:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_47:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_48:
    ;; -- drop --
    pop rax
addr_49:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_50:
    ;; -- while --
addr_51:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_52:
    ;; -- push int 11 --
    mov rax, 11
    push rax
addr_53:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_54:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_60
addr_55:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_56:
    ;; -- print --
    pop rdi
    call print
addr_57:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_58:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_59:
    ;; -- end --
    jmp addr_50
addr_60:
    ;; -- drop --
    pop rax
addr_61:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_1: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_2: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
