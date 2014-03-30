CFLAGS=-g3 -O0

all: random
	./random 10 1100

random: random.o dm.o
	gcc dm.o random.o -o random

vg: random
	valgrind --leak-check=full ./random 10 1100

dm.o: dm.c dm_english.h
	gcc $(CFLAGS) -c dm.c

random.o: random.c dm_english.h
	gcc $(CFLAGS) -c random.c


clean:
	rm *.o
