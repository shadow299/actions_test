CC=gcc
UNITY_SO ?= /home/pi/secret-library
UNITY_RPATH = $(dir $(UNITY_SO))

all: main

main: main.o $(UNITY_SO)
	$(CC) -o main main.o $(UNITY_SO) -Wl,-rpath,$(UNITY_RPATH)

main.o: main.c
	$(CC) -c main.c

clean:
	rm -f main main.o test_main.o test_runner
run: main
	./main

test_main.o: main.c
	$(CC) -c -DTESTING main.c -o test_main.o

test: test_runner.c test_main.o $(UNITY_SO)
	$(CC) -o test_runner test_runner.c test_main.o $(UNITY_SO) -Wl,-rpath,$(UNITY_RPATH)
	./test_runner