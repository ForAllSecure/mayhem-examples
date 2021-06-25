#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int fuzzme(char *buf, unsigned len)
{
  if (len >= 3)
    if(buf[0] == 'b')
      if(buf[1] == 'u')
        if(buf[2] == 'g') {
          printf("Made it to the bug!");
          abort();
        }
  return 0;
}

int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size)
{
  fuzzme((char *) Data, Size);
  return 0;
}
