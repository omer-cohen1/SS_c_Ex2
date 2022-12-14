CC = gcc
FLAGS = -Wall -g

.PHONY: all clean

all: connections

connections: main.o my_mat.o
	$(CC) $(FLAGS) -o connections main.o my_mat.o	
	
main.o: main.c my_mat.h
	$(CC) $(FLAGS) -c main.c 

my_mat.o: my_mat.c my_mat.h
	$(CC) $(FLAGS) -c my_mat.c

clean:
	rm -f connections *.o 

