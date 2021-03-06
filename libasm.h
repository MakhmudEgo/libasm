#ifndef LIBASM_LIBASM_H
#define LIBASM_LIBASM_H

#include <stdlib.h>

int		ft_strlen(char *s);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strdup(const char *s1);
int		ft_write(int fildes, const void *buf, int nbyte);
int		ft_read(int fildes, void *buf, int nbyte);

#endif
