AS := yasm
ASFLAGS := -felf64
CC := gcc

mix: mixmain.o mixsub.o
	$(CC) $(CFLAGS) $^ -o $@ 

arg: argmain.o argsub.o
	$(CC) $(CFLAGS) $^ -o $@ 

clean:
	rm *.o *~
