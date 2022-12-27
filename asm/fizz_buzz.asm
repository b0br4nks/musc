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
    ;; -- while --
addr_2:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_3:
    ;; -- push int 100 --
    mov rax, 100
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
    jz addr_56
addr_6:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_7:
    ;; -- push int 15 --
    mov rax, 15
    push rax
addr_8:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_9:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_10:
    ;; -- drop --
    pop rax
addr_11:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_12:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_13:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_20
addr_14:
    ;; -- push str --
    mov rax, 9
    push rax
    push str_0
addr_15:
    ;; -- push int 1 --
    mov rax, 1
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
    ;; -- else --
    jmp addr_52
addr_20:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_21:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_22:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_23:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_24:
    ;; -- drop --
    pop rax
addr_25:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_26:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_27:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_34
addr_28:
    ;; -- push str --
    mov rax, 5
    push rax
    push str_1
addr_29:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_30:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_31:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_32:
    ;; -- drop --
    pop rax
addr_33:
    ;; -- else --
    jmp addr_51
addr_34:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_35:
    ;; -- push int 5 --
    mov rax, 5
    push rax
addr_36:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_37:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_38:
    ;; -- drop --
    pop rax
addr_39:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_40:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_41:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_48
addr_42:
    ;; -- push str --
    mov rax, 5
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
    ;; -- else --
    jmp addr_50
addr_48:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_49:
    ;; -- print --
    pop rdi
    call print
addr_50:
    ;; -- end --
addr_51:
    ;; -- end --
addr_52:
    ;; -- end --
addr_53:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_54:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_55:
    ;; -- end --
    jmp addr_1
addr_56:
    ;; -- drop --
    pop rax
addr_57:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x46,0x69,0x7a,0x7a,0x42,0x75,0x7a,0x7a,0xa
str_1: db 0x46,0x69,0x7a,0x7a,0xa
str_2: db 0x42,0x75,0x7a,0x7a,0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
