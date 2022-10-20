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
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_9:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_10:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
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
    ;; -- push int 5999 --
    mov rax, 5999
    push rax
addr_17:
    ;; -- push int 3977 --
    mov rax, 3977
    push rax
addr_18:
    ;; -- mod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rdx
addr_19:
    ;; -- fmt --
    pop rdi
    call fmt
addr_20:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
str_1: db 0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0x3d,0xa
segment .bss
mem: resb 640000
