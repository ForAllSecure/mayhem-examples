all: testme
CFLAGS=-g -Wno-div-by-zero -O1 -D_FORTIFY_SOURCE=2 -fstack-protector

testme: testme.c
	gcc -o $@ $(CFLAGS) $^

clean:
	rm -f testme
