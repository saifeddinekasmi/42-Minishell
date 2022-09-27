# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: skasmi <skasmi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/27 15:37:33 by skasmi            #+#    #+#              #
#    Updated: 2022/09/27 18:25:02 by skasmi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=gcc
CFLAGS=-Wall -Wextra -Werror 

NAME=minishell
NAME2=minishell.h

SRCS=	minishell.c \
		libft/ft_lst_addback_env.c \
		libft/ft_lst_last_env.c \
		libft/ft_lstnew_env.c \
		libft/ft_split.c \
		libft/ft_strcpy.c \
		libft/ft_strlen.c \
		libft/ft_strcmp.c \
		libft/ft_strchr.c \
		libft/ft_atoi.c \
		libft/ft_memmove.c \
		libft/ft_strjoin.c \
		libft/ft_substr.c \
		libft/ft_strdup.c \
		libft/ft_memcpy.c \
		builtins/env.c \
		builtins/export.c \
		builtins/pwd.c \
		builtins/cd.c \
		builtins/exit.c \
		builtins/final.c \
		builtins/unset.c \
		src/syntax_error.c \
		src/syntax_error2.c \
		src/syntax_error_general.c \
		src/expand.c \
		src/ft_pipe.c \
		src/lst_pipe.c \
		src/execution.c
	

BOBJCTS=$(BSRCS:%.c=%.o)

OBJCTS=$(SRCS:%.c=%.o)

$(NAME) : $(OBJCTS) $(NAME2)

		$(CC) $(CFLAGS) $(OBJCTS) -lreadline -o $(NAME)
				
		@echo "\033[90m███╗░░░███╗██╗███╗░░██╗██╗░██████╗██╗░░██╗███████╗██╗░░░░░██╗░░░░░\033[0m" 
		@echo "\033[90m████╗░████║██║████╗░██║██║██╔════╝██║░░██║██╔════╝██║░░░░░██║░░░░░\033[0m"
		@echo "\033[91m██╔████╔██║██║██╔██╗██║██║╚█████╗░███████║█████╗░░██║░░░░░██║░░░░░\033[0m"
		@echo "\033[91m██║╚██╔╝██║██║██║╚████║██║░╚═══██╗██╔══██║██╔══╝░░██║░░░░░██║░░░░░ \033[0m"
		@echo "\033[93m██║░╚═╝░██║██║██║░╚███║██║██████╔╝██║░░██║███████╗███████╗███████╗ \033[0m"
		@echo "\033[93m╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝╚═╝╚═════╝░╚═╝░░╚═╝╚══════╝╚══════╝╚══════╝\033[0m"
			
all: $(NAME)
	
clean:
				rm -f $(OBJCTS) $(BOBJCTS)

fclean: clean
				rm -f $(NAME)

re: fclean all