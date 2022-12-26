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
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_1:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_2:
    ;; -- while --
addr_3:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_4:
    ;; -- push int 1000 --
    mov rax, 1000
    push rax
addr_5:
    ;; -- lt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_6:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_31
addr_7:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_8:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_9:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_10:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_11:
    ;; -- drop --
    pop rax
addr_12:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_13:
    ;; -- equal --
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_14:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_15:
    ;; -- push int 5 --
    mov rax, 5
    push rax
addr_16:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_17:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_18:
    ;; -- drop --
    pop rax
addr_19:
    ;; -- push int 0 --
    mov rax, 0
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
    ;; -- bor --
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_22:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_27
addr_23:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_24:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_25:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_26:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_27:
    ;; -- end --
addr_28:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_29:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_30:
    ;; -- end --
    jmp addr_2
addr_31:
    ;; -- drop --
    pop rax
addr_32:
    ;; -- print --
    pop rdi
    call print
addr_33:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
segment .bss
args_ptr: resq 1
mem: resb 640000
