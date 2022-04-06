#include <stddef.h>
#include <stdint.h>

int mayhemit(char *buf, unsigned len)
{
  if(len >= 3)
    if(buf[0] == 'b')
      if(buf[1] == 'u')
        if(buf[2] == 'g') {
          abort();
        }
  return 0;
}

extern int HF_ITER(uint8_t** buf, size_t* len);

int main(void) {
	for (;;) {
		size_t len;
		uint8_t *buf;

		HF_ITER(&buf, &len);

		mayhemit(buf, len);
	}
}