PROJECT			= project.out
CC								= g++
CCFLAGS			=	-c -Wall -Werror -Wextra

.PHONY : all clean

all : $(PROJECT)

$(PROJECT) : main.o stack.o queue.o
	$(CC) $^ -o $@

main.o : main.cpp
	$(CC) $(CCFLAGS) $< -o $@

stack.o : stack.cpp
	$(CC) $(CCFLAGS) $< -o $@

queue.o : queue.cpp
	$(CC) $(CCFLAGS) $< -o $@

clean:
	rm -rf *.o $(PROJECT)
