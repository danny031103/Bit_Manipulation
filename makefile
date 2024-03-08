CC = gcc
CFLAGS = -arch x86_64

all:	assign2

sum_squares.o:	sum_squares.s
	$(CC) $(CFLAGS) -c sum_squares.s

assign2:	assignment2.o sum_squares.o
	$(CC) $(CFLAGS) -o assign2 assignment2.o sum_squares.o


