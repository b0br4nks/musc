BITS 64
segment .text
fmt:
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
addr_0:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_1:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_2:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_3:
    ;; -- fmt --
    pop rdi
    call fmt
addr_4:
    ;; -- fmt --
    pop rdi
    call fmt
addr_5:
    ;; -- fmt --
    pop rdi
    call fmt
addr_6:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_7:
    ;; -- fmt --
    pop rdi
    call fmt
addr_8:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_9:
    ;; -- fmt --
    pop rdi
    call fmt
addr_10:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_11:
    ;; -- fmt --
    pop rdi
    call fmt
addr_12:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_0
addr_13:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_14:
    ;; -- push int 1 --
    mov rax, 1
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
    ;; -- push str --
    mov rax, 13
    push rax
    push str_1
addr_17:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_18:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_19:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_20:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_2
addr_21:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_22:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_23:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_24:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_25:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_26:
    ;; -- fmt --
    pop rdi
    call fmt
addr_27:
    ;; -- fmt --
    pop rdi
    call fmt
addr_28:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_29:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_30:
    ;; -- fmt --
    pop rdi
    call fmt
addr_31:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_32:
    ;; -- fmt --
    pop rdi
    call fmt
addr_33:
    ;; -- fmt --
    pop rdi
    call fmt
addr_34:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_3
addr_35:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_36:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_37:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_38:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_39:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_40:
    ;; -- DUPL2 -- 
    pop rbx
    pop rax
    push rax
    push rbx
    push rax
    push rbx
addr_41:
    ;; -- fmt --
    pop rdi
    call fmt
addr_42:
    ;; -- fmt --
    pop rdi
    call fmt
addr_43:
    ;; -- fmt --
    pop rdi
    call fmt
addr_44:
    ;; -- fmt --
    pop rdi
    call fmt
addr_45:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_4
addr_46:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_47:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_48:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_49:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_50:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_51:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_52:
    ;; -- fmt --
    pop rdi
    call fmt
addr_53:
    ;; -- fmt --
    pop rdi
    call fmt
addr_54:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_5
addr_55:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_56:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_57:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_58:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_59:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_60:
    ;; -- drop --
    pop rax
addr_61:
    ;; -- fmt --
    pop rdi
    call fmt
addr_62:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_6
addr_63:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_64:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_65:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_66:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_67:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_68:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_69:
    ;; -- fmt --
    pop rdi
    call fmt
addr_70:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_7
addr_71:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_72:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_73:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_74:
    ;; -- push int 9999999999999999999 --
    mov rax, 9999999999999999999
    push rax
addr_75:
    ;; -- fmt --
    pop rdi
    call fmt
addr_76:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_1: db 0x48,0x65,0x6c,0x6c,0x6f,0x2c,0x20,0x57,0x6f,0x72,0x6c,0x64,0xa
str_2: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_3: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_4: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_5: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_6: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_7: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
segment .bss
mem: resb 640000
