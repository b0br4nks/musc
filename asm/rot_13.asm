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
    ;; -- while --
addr_1:
    ;; -- push int 1024 --
    mov rax, 1024
    push rax
addr_2:
    ;; -- mem --
    push mem
addr_3:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_4:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_5:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_6:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_7:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_8:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_9:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_83
addr_10:
    ;; -- push int 0 --
    mov rax, 0
    push rax
addr_11:
    ;; -- while --
addr_12:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_13:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_14:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_15:
    ;; -- do --
    pop rax
    test rax, rax
    jz addr_76
addr_16:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_17:
    ;; -- mem --
    push mem
addr_18:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_19:
    ;; -- load --
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_20:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_21:
    ;; -- push int 97 --
    mov rax, 97
    push rax
addr_22:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_23:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_24:
    ;; -- push int 122 --
    mov rax, 122
    push rax
addr_25:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_26:
    ;; -- band --
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_27:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_45
addr_28:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_29:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_30:
    ;; -- push int 97 --
    mov rax, 97
    push rax
addr_31:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_32:
    ;; -- push int 13 --
    mov rax, 13
    push rax
addr_33:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_34:
    ;; -- push int 26 --
    mov rax, 26
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
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_37:
    ;; -- drop --
    pop rax
addr_38:
    ;; -- push int 97 --
    mov rax, 97
    push rax
addr_39:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_40:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_41:
    ;; -- mem --
    push mem
addr_42:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_43:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_44:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_45:
    ;; -- end --
addr_46:
    ;; -- dupl --
    pop rax
    push rax
    push rax
addr_47:
    ;; -- push int 65 --
    mov rax, 65
    push rax
addr_48:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_49:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_50:
    ;; -- push int 90 --
    mov rax, 90
    push rax
addr_51:
    ;; -- gt --
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_52:
    ;; -- band --
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_53:
    ;; -- if --
    pop rax
    test rax, rax
    jz addr_71
addr_54:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_55:
    ;; -- over --
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_56:
    ;; -- push int 65 --
    mov rax, 65
    push rax
addr_57:
    ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_58:
    ;; -- push int 13 --
    mov rax, 13
    push rax
addr_59:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_60:
    ;; -- push int 26 --
    mov rax, 26
    push rax
addr_61:
    ;; -- divmod --
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_62:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_63:
    ;; -- drop --
    pop rax
addr_64:
    ;; -- push int 65 --
    mov rax, 65
    push rax
addr_65:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_66:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_67:
    ;; -- mem --
    push mem
addr_68:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_69:
    ;; -- swap --
    pop rax
    pop rbx
    push rax
    push rbx
addr_70:
    ;; -- store --
    pop rbx
    pop rax
    mov [rax], bl
addr_71:
    ;; -- end --
addr_72:
    ;; -- drop --
    pop rax
addr_73:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_74:
    ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_75:
    ;; -- end --
    jmp addr_11
addr_76:
    ;; -- drop --
    pop rax
addr_77:
    ;; -- mem --
    push mem
addr_78:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_79:
    ;; -- push int 1 --
    mov rax, 1
    push rax
addr_80:
    ;; -- syscall3 --
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_81:
    ;; -- drop --
    pop rax
addr_82:
    ;; -- end --
    jmp addr_0
addr_83:
    ;; -- drop --
    pop rax
addr_84:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
segment .bss
args_ptr: resq 1
mem: resb 640000
