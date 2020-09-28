global              _ft_strdup

extern              _malloc
extern              _ft_strlen
extern              _ft_strcpy

section             .text

_ft_strdup:
            xor     rax, rax
            push	rdi
            call	_ft_strlen
            mov		rdi, rax
            call	_malloc
            cmp		rax, 0
            je		_null
            mov		rdi, rax
            pop		rsi
            call	_ft_strcpy
            ret
_null:
            ret