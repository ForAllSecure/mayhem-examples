#include <stddef.h>
#include <stdint.h>
#include <iostream>
#include <stdlib.h>

int mayhemit(char *buf, unsigned len)
{
  if(len >= 3)
    if(buf[0] == 'b')
      if(buf[1] == 'u')
        if(buf[2] == 'g') {
          std::cout << "You've got it!";
          abort();
        }
  return 0;
}

extern "C" int HF_ITER(uint8_t** buf, size_t* len);

int main(void) {
	for (;;) {
		size_t len;
		uint8_t *buf;

		HF_ITER(&buf, &len);

		mayhemit(reinterpret_cast<char *>(buf), len);
	}
}