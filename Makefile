##
## EPITECH PROJECT, 2019
## makefile
## File description:
## Makefile asm
##

SRC=	strlen.asm		\
		strchr.asm		\
		memset.asm		\
		memcpy.asm		\
		strcmp.asm		\
		strncmp.asm		\
		memmove.asm		\
		strcasecmp.asm	\
		rindex.asm		\
		strcspn.asm		\
		strpbrk.asm		\
		strstr.asm		\

OBJ=	$(SRC:.asm=.o)

LD=		ld -shared -fPIC

NAME=	libasm.so

all:	$(NAME)

%.o: %.asm
	nasm -f elf64 -o $@ $<

$(NAME):	$(OBJ)
			$(LD) -o $(NAME) $(OBJ)

clean:
	rm -f *.o

fclean:	clean
		rm -f $(NAME)
		rm -f *~

re:	fclean all