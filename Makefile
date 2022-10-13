# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bimartin <bimartin@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/04 15:11:54 by bimartin          #+#    #+#              #
#    Updated: 2022/10/13 14:57:28 by bimartin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libftprintf.a

HEADER = ft_printf.h

SRC =	ft_printf.c \
		ft_charnstr.c \
		ft_ptr.c \
		ft_putnumbers.c

OBJ = $(SRC:.c=.o)

DEPS = $(SRC:.c=.d)

FLAGS = -Wall -Wextra -Werror -MMD -g

RM = rm -f

DEF_COLOR := \033[0;39m
GRAY := \033[0;90m
RED := \033[0;91m
GREEN := \033[0;92m
YELLOW := \033[0;93m
BLUE := \033[0;94m
MAGENTA := \033[0;95m
CYAN := \033[0;96m
WHITE := \033[0;97m

%.o : %.c
	@echo "$(BLUE)	Compiling: $(YELLOW)$< $(DEF_COLOR)"
	@$(CC) $(FLAGS) -c $< -o $@

all: $(NAME)

-include $(DEPS)
$(NAME) : $(OBJ)
	@ar rcs	$(NAME) $(OBJ)

clean :
	@$(RM) $(OBJ)
	@$(RM) $(DEPS)
	@echo "$(BLUE)	Printf object files cleaned.$(DEF_COLOR)"

fclean : clean
	@$(RM) $(NAME)
	@echo "$(WHITE)	All objects, dependencies and executables removed.$(DEF_COLOR)"

re : fclean all

.PHONY : all clean fclean re
