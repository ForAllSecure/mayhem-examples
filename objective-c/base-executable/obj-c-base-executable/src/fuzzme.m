#import <Foundation/Foundation.h>

int fuzzme(char *buf)
{
  if(strlen(buf) >= 3)
    if(buf[0] == 'b')
      if(buf[1] == 'u')
        if(buf[2] == 'g') {
          printf("You've got it!");
          abort();      // Defect: divide-by-zero.
        }
    return 0;
}

int main (int argc, const char * argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  
  if(argc != 2) {
    NSLog (@"Must supply a text file\n");
    [pool drain];    
    return -1;
  }

  if ([[NSFileManager defaultManager] fileExistsAtPath:argv[1]]) {
    NSLog (@"File exists");
    [pool drain];
    return -1;
  }


  NSLog (@"Hello, World!");
  return 0; 
}

