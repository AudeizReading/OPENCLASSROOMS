CC=-/bin/gcc
LDFLAGS=
CFLAGS=-Wall -Wextra -Werror -pedantic -ansi
DEPCFLAGS=-MM -MD
RM=-/bin/rm -rf
SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)
DEP=$(SRC:.c=.d)
NAME=08-tp-plus-ou-moins

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(LDFLAGS) $^ -o $@; chmod +x $@

%.o: %.c
	$(CC) -c $< $(CFLAGS) -o $@

%.d: %.c
	$(CC) $(DEPCFLAGS) $(CFLAGS) $< -o $@

clean:
	$(RM) $(OBJ) $(DEP)

fclean: clean
	$(RM) $(NAME)

re: fclean all

-include $(DEP)
