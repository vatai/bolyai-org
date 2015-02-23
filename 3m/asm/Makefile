AS := yasm
ASFLAGS := -felf64
CC := gcc

my: mymain.o mysub.o
	$(CC) $(CFLAGS) $^ -o $@ 

mix: mixmain.o mixsub.o
	$(CC) $(CFLAGS) $^ -o $@ 

arg: argmain.o argsub.o
	$(CC) $(CFLAGS) $^ -o $@ 

clean:
	rm *.o *~
