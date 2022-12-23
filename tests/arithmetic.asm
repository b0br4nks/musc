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
    mov rax, 10
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
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_6:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_7:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_8:
    ;; -- print --
    pop rdi
    call print
addr_9:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_1
addr_10:
    ;; -- push int 1 --
    mov rax, 1
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
    mov rax, 14
    push rax
    push str_2
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
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_20:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_21:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_22:
    ;; -- print --
    pop rdi
    call print
addr_23:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_3
addr_24:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_25:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_26:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_27:
    ;; -- drop --
    pop rax
addr_28:
    ;; -- push str --
    mov rax, 10
    push rax
    push str_4
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
    ;; -- push int 2674 --
    mov rax, 2674
    push rax
addr_34:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_35:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_36:
    ;; -- drop --
    pop rax
addr_37:
    ;; -- print --
    pop rdi
    call print
addr_38:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_5
addr_39:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_40:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_41:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_42:
    ;; -- drop --
    pop rax
addr_43:
    ;; -- push str --
    mov rax, 8
    push rax
    push str_6
addr_44:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_45:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_46:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_47:
    ;; -- drop --
    pop rax
addr_48:
    ;; -- push int 5999 --
    mov rax, 5999
    push rax
addr_49:
    ;; -- push int 3977 --
    mov rax, 3977
    push rax
addr_50:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_51:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_52:
    ;; -- drop --
    pop rax
addr_53:
    ;; -- print --
    pop rdi
    call print
addr_54:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_7
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
    ;; -- drop --
    pop rax
addr_59:
    ;; -- push str --
    mov rax, 16
    push rax
    push str_8
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
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_65:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_66:
    ;; -- mul --
    pop rax
    pop rbx
    mul rbx
    push rax
addr_67:
    ;; -- print --
    pop rdi
    call print
addr_68:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x41,0x64,0x64,0x69,0x74,0x69,0x6f,0x6e,0x3a,0xa
str_1: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_2: db 0x53,0x75,0x62,0x73,0x74,0x72,0x61,0x63,0x74,0x69,0x6f,0x6e,0x3a,0xa
str_3: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_4: db 0x44,0x69,0x76,0x69,0x73,0x69,0x6f,0x6e,0x3a,0xa
str_5: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_6: db 0x4d,0x6f,0x64,0x75,0x6c,0x6f,0x3a,0xa
str_7: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_8: db 0x4d,0x75,0x6c,0x74,0x69,0x70,0x6c,0x69,0x63,0x61,0x74,0x69,0x6f,0x6e,0x3a,0xa
segment .bss
args_ptr: resq 1
mem: resb 640000
