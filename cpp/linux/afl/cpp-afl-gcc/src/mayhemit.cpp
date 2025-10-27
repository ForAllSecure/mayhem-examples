#include <string.h>
#include <iostream>
#include <fstream>
#include <stdlib.h>

int mayhemit(char *buf)
{
  if(strlen(buf) >= 3)
    if(buf[0] == 'b')
      if(buf[1] == 'u')
        if(buf[2] == 'g') {
          std::cout << "You've got it!";
          abort();
        }
  return 0;
}

int main(int argc, char *argv[])
{
  if(argc != 2){
    std::cerr << "Must supply a text file\n";
    return -1;
  }

  std::ifstream infile;
  infile.open(argv[1]);

  if (infile.fail()) {
    std::cerr << "Could not open " << argv[1];
    return -1;
  }

  else {
    char buf[12] = "";
    infile.read(buf, sizeof(buf));
    mayhemit(buf);
    return 0;
  }
}