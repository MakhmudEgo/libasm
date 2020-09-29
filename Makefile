# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mizola <mizola@student.21-school.ru>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/11 14:02:02 by mizola            #+#    #+#              #
#    Updated: 2020/05/16 18:11:07 by mizola           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s ft_write.s ft_read.s

OSRC = $(SRC:.s=.o)

HEADER = libasm.h

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OSRC) $(HEADER)
	ar rcs $(NAME) $(OSRC)

%.o:%.s $(HEADER)
	nasm -fmacho64 $<

clean:
	rm -f $(OSRC)

fclean: clean
	rm -f $(NAME)

re: fclean all

run: $(NAME)
	gcc main.c $(NAME)

.PHONY: all clean fclean re
