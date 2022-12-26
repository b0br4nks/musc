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
    ;; -- push int 97 --
    mov rax, 97
    push rax
addr_1:
    ;; -- mem --
    push mem
addr_2:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_3:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_4:
    ;; -- store --
    pop rax
    pop rbx
    mov [rax], bl
addr_5:
    ;; -- push int 98 --
    mov rax, 98
    push rax
addr_6:
    ;; -- mem --
    push mem
addr_7:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_8:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_9:
    ;; -- store --
    pop rax
    pop rbx
    mov [rax], bl
addr_10:
    ;; -- push int 99 --
    mov rax, 99
    push rax
addr_11:
    ;; -- mem --
    push mem
addr_12:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_13:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_14:
    ;; -- store --
    pop rax
    pop rbx
    mov [rax], bl
addr_15:
    ;; -- push int 10 --
    mov rax, 10
    push rax
addr_16:
    ;; -- mem --
    push mem
addr_17:
    ;; -- push int 3 --
    mov rax, 3
    push rax
addr_18:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_19:
    ;; -- store --
    pop rax
    pop rbx
    mov [rax], bl
addr_20:
    ;; -- push int 4 --
    mov rax, 4
    push rax
addr_21:
    ;; -- mem --
    push mem
addr_22:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_23:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_24:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_25:
    ;; -- drop --
    pop rax
addr_26:
    ;; -- mem --
    push mem
addr_27:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_28:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_29:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_30:
    ;; -- forth load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_31:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_32:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_33:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_34:
    ;; -- store --
    pop rax
    pop rbx
    mov [rax], bl
addr_35:
    ;; -- mem --
    push mem
addr_36:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_37:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_38:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_39:
    ;; -- forth load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_40:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_41:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_42:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_43:
    ;; -- store --
    pop rax
    pop rbx
    mov [rax], bl
addr_44:
    ;; -- mem --
    push mem
addr_45:
    ;; -- push int 2 --
    mov rax, 2
    push rax
addr_46:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_47:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_48:
    ;; -- forth load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
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
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_52:
    ;; -- store --
    pop rax
    pop rbx
    mov [rax], bl
addr_53:
    ;; -- push int 4 --
    mov rax, 4
    push rax
addr_54:
    ;; -- mem --
    push mem
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
    ;; -- push int 18446744073709551615 --
    mov rax, 18446744073709551615
    push rax
addr_60:
    ;; -- mem --
    push mem
addr_61:
    ;; -- forth store64 --
    pop rax
    pop rbx
    mov [rax], rbx
addr_62:
    ;; -- mem --
    push mem
addr_63:
    ;; -- forth load64 --
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_64:
    ;; -- print --
    pop rdi
    call print
addr_65:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
segment .bss
args_ptr: resq 1
mem: resb 640000
