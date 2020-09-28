#include "libasm.h"
#include <printf.h>
int main()
{
	printf("ft_strlen - |%d|\n",	ft_strlen("helo"));
	char *src = "hello fafa";
	char dest[60];
	ft_strcpy(dest, src);
	printf("ft_strcpy - |%s|\n", dest);

	char *str1 = "b";
	char *str2 = "a";
	printf("ft_strcmp - |%d|\n", ft_strcmp(str1, str2));

	char *hellostrdup = "";
	char *cpy = ft_strdup(hellostrdup);
	printf("ft_strdup - |%s|\n", cpy);

}
/*
 * nasm -fmacho64 ft_strcpy.s
 *
 *
 *
 *
 *
 *
*/
