CC=gcc

main: main.o
	$(CC) -o main main.o

main.o: main.c
	$(CC) -c main.c

all: main
clean:
	rm -f main main.o
run: main
	./main