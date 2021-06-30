#import <Foundation/Foundation.h>

// declare our function
int fuzzme(NSString* contents) {
  if (contents.length >= 3) {
    if ([contents characterAtIndex:0] == 'b') {
      if ([contents characterAtIndex:1 == 'u']) {
        if ([contents characterAtIndex:2 == 'g']) {
          NSLog(@"Made it to the bug!");
          abort();
        }
      }
    }
  }
  return 0;
}

int main (int argc, const char * argv[])
{
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  if(argc != 2) {
    NSLog (@"Must supply a text file\n");
    [pool drain];    
    return -1;
  }

  NSString* path = [NSString stringWithUTF8String:argv[1]];

  if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
    NSLog (@"File exists");
    NSData* data = [NSData dataWithContentsOfFile:path];
    NSString* contents = [[NSString alloc] initWithBytes:[data bytes] length:[data length] encoding:NSUTF8StringEncoding];
    
    fuzzme(contents);
    [pool drain];
    return 0;
  }
  else {
    return -1;
  }

}

