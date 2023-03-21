##
## EPITECH PROJECT, 2022
## makefile
## File description:
## make
##

SRC	=	$(shell find . -name "*.c" -type f)

OBJ	=	$(SRC:.c=.o)

NAME	=	run_tests

LIB	=

$(NAME):	$(OBJ)
	gcc -g -o $(NAME) $(SRC) $(LIB)

all:	$(NAME)

clean :
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

re: 	fclean $(NAME)
