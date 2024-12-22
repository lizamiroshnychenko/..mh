# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ymiroshn <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/19 15:57:15 by ymiroshn          #+#    #+#              #
#    Updated: 2024/12/19 15:57:17 by ymiroshn         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DIRSRC		= srcs/

SRCS		= ${DIRSRC}main.c

OBJS		= ${SRCS:.c=.o}

NAME		= ft_display_file

CC			= gcc
RM			= rm -f

CFLAGS		= -Wall -Wextra -Werror

${NAME}:	${OBJS}
			gcc -o ${NAME} ${OBJS} ${CFLAGS}

all:		${NAME}

clean:
			${RM} ${OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re
