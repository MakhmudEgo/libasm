global      _ft_strcmp

section     .text

_ft_strcmp:
            xor rax, rax
            xor rbx, rbx
            xor r15, r15
_compare:
            cmp byte[rsi + r15], 0
            je  _end
            cmp byte[rdi + r15], 0
            je  _end
            mov	bl, byte[rsi + r15]
            mov	al, byte[rdi + r15]
            cmp rax, rbx
            jne _end
            inc r15
            jmp _compare
_end:
            mov	bl, byte[rsi + r15]
            mov	al, byte[rdi + r15]
            sub rax, rbx
            ret