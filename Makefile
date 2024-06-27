# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: andrefil <andrefil@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/10 11:57:28 by andrefil          #+#    #+#              #
#    Updated: 2024/06/27 14:46:18 by andrefil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#------------------ NAME ---------------------#
NAME = libft.a

#------------------ INCLUDES ------------------#
INCLUDES = $(addprefix -I, includes/)

#------------------ COMPILER -----------------#
CC = cc

#------------------ FLAGS --------------------#
CFLAGS = -Wall -Wextra -Werror -O3

#------------------ FILES --------------------#
SRC_FILES	+=	$(addprefix src/string/, \
					ft_isalpha.c \
					ft_isdigit.c \
					ft_isalnum.c \
					ft_isascii.c \
					ft_isprint.c \
					ft_strlcpy.c \
					ft_strlcat.c \
					ft_strchr.c \
					ft_strrchr.c \
					ft_strncmp.c \
					ft_strlen.c \
					ft_strmapi.c\
					ft_striteri.c\
					ft_substr.c \
					ft_strjoin.c \
					ft_strdup.c \
					ft_strnstr.c \
					ft_strtrim.c)

SRC_FILES	+=	$(addprefix src/aditionals/, \
					ft_putchar_fd.c\
					ft_putstr_fd.c\
					ft_putendl_fd.c\
					ft_putnbr_fd.c \
					ft_toupper.c \
					ft_tolower.c \
					ft_atoi.c \
					ft_itoa.c \
					ft_split.c)

SRC_FILES	+=	$(addprefix src/memory/, \
					ft_bzero.c \
					ft_memset.c \
					ft_memcpy.c \
					ft_memmove.c \
					ft_memchr.c \
					ft_memcmp.c \
					ft_calloc.c)

SRC_FILES	+=	$(addprefix src/list/, \
					ft_lstnew.c \
					ft_lstsize.c \
					ft_lstlast.c \
					ft_lstadd_back.c \
					ft_lstadd_front.c \
					ft_lstdelone.c \
					ft_lstclear.c \
					ft_lstiter.c \
					ft_lstmap.c)

#------------------ OBJ ---------------------#
OBJS_DIR	:=	src/objs/
OBJS		:=	$(SRC_FILES:%.c=$(OBJS_DIR)%.o)

#------------------ COMPILATION -------------#
all: $(NAME)

$(OBJS_DIR)%.o:%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	@rm -rf $(OBJS_DIR)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

.PHONY : all clean fclean re
.SILENT:
