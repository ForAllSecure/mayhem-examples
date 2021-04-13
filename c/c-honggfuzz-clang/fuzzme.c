#include <stddef.h>
#include <stdint.h>

int fuzzme(char *buf, unsigned len)
{
  if(buf[0] == 'b')
    if(buf[1] == 'u')
      if(buf[2] == 'g') {
        return 1/0;      // Defect: divide-by-zero.
      }
  return 0;
}

int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size){
  return fuzzme((char *) Data, Size);
}
