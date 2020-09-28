global     _ft_strcmp

section     .text

_ft_strcmp:
            xor rax, rax
_compare:
            cmp byte[rsi + rax], 0
            je  _end
            cmp byte[rdi + rax], 0
            je  _end

            cmp r10
            inc rax
            jmp _compare

_end:
            sub