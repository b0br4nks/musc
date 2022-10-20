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
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_1:
    ;; -- push int 4 --
    mov rax, 4
    push rax
addr_2:
    ;; -- lsh --
    pop rcx
    pop rbx
    shl rbx, cl
    push rbx
addr_3:
    ;; -- fmt --
    pop rdi
    call fmt
addr_4:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_0
addr_5:
    ;; -- push int 1 --
    mov rax, 1
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
    ;; -- push int 32 --
    mov rax, 32
    push rax
addr_9:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_10:
    ;; -- rsh --
    pop rcx
    pop rbx
    shr rbx, cl
    push rbx
addr_11:
    ;; -- fmt --
    pop rdi
    call fmt
addr_12:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_1
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
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_17:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_18:
    ;; -- bor --
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_19:
    ;; -- fmt --
    pop rdi
    call fmt
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
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_26:
    ;; -- band --
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_27:
    ;; -- fmt --
    pop rdi
    call fmt
addr_28:
    ;; -- push str --
    mov rax, 28
    push rax
    push str_3
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
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_1: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_2: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_3: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
segment .bss
mem: resb 640000
