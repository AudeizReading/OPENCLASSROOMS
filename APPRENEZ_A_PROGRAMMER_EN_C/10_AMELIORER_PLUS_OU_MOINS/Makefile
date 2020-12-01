CC=-/bin/gcc
LDFLAGS=
CFLAGS=-Wall -Wextra -Werror -ansi -pedantic
DEP_CFLAGS=-MM -MD
RM=-/bin/rm -rf
SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)
DEP=$(SRC:.c=.d)
NAME=10-plus-ou-moins-tp-ameliore

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(LDFLAGS) $^ -o $@; chmod +x $@

%.o: %.c
	$(CC) -c $< $(CFLAGS) -o $@

%.d: %.c
	$(CC) $< $(DEP_CFLAGS) $(CFLAGS) -o $@

clean:
	$(RM) $(OBJ) $(DEP)

fclean: clean
	$(RM) $(NAME)

re: fclean all

-include $(DEP)
