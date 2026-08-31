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

test_main.o: main.c
	$(CC) -c -DTESTING main.c -o test_main.o

test: test_runner.c test_main.o unity.o
	$(CC) -o test_runner test_runner.c test_main.o unity.o
	./test_runner