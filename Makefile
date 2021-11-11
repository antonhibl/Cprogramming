CC = gcc
CFLAGS = -Wall -Wextra -O0 -std=c11

maze_runner: maze_runner.o runner.o mazelib.o

maze_runner.o: maze_runner.c runner.h mazelib.h

runner.o: runner.c mazelib.h

mazelib.o: mazelib.c


.PHONY: clean debug

debug: CFLAGS += -g
debug: clean maze_runner

clean:
	rm -f *.o maze_runner
