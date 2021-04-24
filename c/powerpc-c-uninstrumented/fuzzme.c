#include <stdio.h>
#include <string.h>

int fuzzme(char *buf, unsigned len);

int main(int argc, char *argv[])
{
  FILE *f;
  char buf[12];

  if(argc != 2){
    fprintf(stderr, "Must supply a text file\n");
    return -1;
  }
  f = fopen(argv[1], "r");
  if(f == NULL){
    fprintf(stderr, "Could not open %s\n", argv[1]);
    return -1;
  }
  if(fgets(buf, sizeof(buf), f) == NULL){
    fprintf(stderr, "Could not read from %s\n", argv[1]);
    return -1;
  }
  fuzzme(buf, strlen(buf));
  return 0;
}

int fuzzme(char *buf, unsigned len)
{
  unsigned ok;

  if(!ok) // Defect: uninitialized use of ok.
    ok = len;

  if(buf[0] == 'b')
    if(buf[1] == 'u')
      if(buf[2] == 'g') {
	*(int *)0x0 = 1; // Defect: null pointer dereference
      }
  return 0;
}
