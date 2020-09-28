global    _ft_strlen

_ft_strlen: xor rax, rax

_while:
            cmp byte[rdi + rax], 0
            je _end
            inc rax
            jmp _while

_end:
            ret