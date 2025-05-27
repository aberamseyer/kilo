CC     = gcc
CFLAGS := -Wall -Werror -pedantic --std=c99 -g3

all: clean kilo run

kilo: kilo.o
	$(CC) -o $@ $(CFLAGS) $^

%.o : %.c
	$(CC) -c -o $@ $(CFLAGS) $<

run:
	./kilo ./test.c

.PHONY: clean

clean: 
	rm -fr *.o kilo