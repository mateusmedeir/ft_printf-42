SRCS		= ft_printf.c ft_conversions.c ft_prints_pt1.c ft_prints_pt2.c

OBJS		= $(SRCS:.c=.o)

NAME		= libftprintf.a

AR			= ar rc
CC			= cc
FLAGS		= -Wall -Wextra -Werror
RM			= rm

all:		$(NAME)

.c.o:
			$(CC) $(FLAGS) -c $< -o $(<:.c=.o)

$(NAME):	$(OBJS)
			$(AR) $(NAME) $(OBJS)

clean:
			$(RM) -f $(OBJS)

fclean:		clean
			$(RM) -f $(NAME)

re:			fclean all

.PHONY:		all clean fclean re

