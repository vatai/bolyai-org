AS := yasm
CFLAGS := -std=gnu99
ASFLAGS := -felf64
CC := gcc

ell2-1: ell2-1.o ell2-1f.o
	$(CC) $(CFLAGS) $^ -o $@ 

array: arraymain.o arraysub.o
	$(CC) $(CFLAGS) $^ -o $@ 

my: mymain.o mysub.o
	$(CC) $(CFLAGS) $^ -o $@ 

my1: mymain1.o mysub1.o
	$(CC) $(CFLAGS) $^ -o $@ 

mix: mixmain.o mixsub.o
	$(CC) $(CFLAGS) $^ -o $@ 

arg: argmain.o argsub.o
	$(CC) $(CFLAGS) $^ -o $@ 

clean:
	rm *.o *~
