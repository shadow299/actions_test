CC=gcc

all: main

main: main.o unity.o
	$(CC) -o main main.o unity.o

main.o: main.c
	$(CC) -c main.c

unity.o: unity.c
	$(CC) -c unity.c
clean:
	rm -f main main.o unity.o test_runner
run: main
	./main

test: test_runner.c main.o unity.o
	$(CC) -o test_runner test_runner.c main.o unity.o
	./test_runner