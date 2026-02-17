FLAGS = -no-pie -fno-PIC -fno-stack-protector -m32 -masm=intel -D_FORTIFY_SOURCE=0 -fno-asynchronous-unwind-tables
OPT = -O0
# COMPILER = gcc 
COMPILER = clang 

all:
	$(COMPILER) $(FLAGS) $(OPT) -s -c -o main.o main.c 
	objconv -fnasm main.o