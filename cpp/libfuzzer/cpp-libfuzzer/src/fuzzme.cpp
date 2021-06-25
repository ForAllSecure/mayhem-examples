#include <stddef.h>
#include <stdint.h>
#include <iostream>

int fuzzme(char *buf, unsigned len)
{
  if(len >= 3)
    if(buf[0] == 'b')
      if(buf[1] == 'u')
        if(buf[2] == 'g') {
          std::cout << "You've got it!";
          return buf[0]/(buf[0] - 'b');      // Defect: divide-by-zero.
        }
  return 0;
}

extern "C" int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size)
{
  fuzzme((char *) Data, Size);
  return 0;
}
