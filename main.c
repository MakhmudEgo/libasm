#include "libasm.h"
#include <printf.h>
int main()
{
	printf("%d\n",	ft_strlen("helo"));
	char *src = "hello fafa";
	char dest[60];
	ft_strcpy(dest, src);
	printf("ft_strcpy |%s|\n", dest);

}