all: testme
CFLAGS=-g -Wno-div-by-zero -fno-stack-protector -zexecstack -no-pie

testme: testme.c
	gcc -o $@ $(CFLAGS) $^

clean:
	rm -f testme
