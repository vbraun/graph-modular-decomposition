

all: random.o dm.o
	gcc dm.o random.o -o random
	./random 10 1100

dm.o: dm.c dm_english.h
	gcc -c dm.c

random.o: random.c dm_english.h
	gcc -c random.c


clean:
	rm *.o
