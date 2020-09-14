CC=gcc
CFLAGS=-Wall -Werror -Wextra
RM=-rm -rf
exec=03-hello-world
src=$(wildcard *.c)
obj=$(src:.c=.o)

all: $(exec)

$(exec): $(obj)
	$(CC) $< -o $@; chmod +x $@

%.o:%.c
	$(CC) -c $< $(CFLAGS) -o $@

.PHONY: clean mrproper

clean:
	$(RM) *.o

mrproper: clean
	$(RM) $(exec)
