//#include "crypto_hash.h"
#include "jh_ansi_opt32.h"
#define digestLength 256    
int main( int argc, char **argv )
{
  //int digestLength = 224;
  unsigned char buf[1024];
   unsigned char hash[digestLength];
  size_t i;


  for( i = 0; i < 1024; ++i )
    buf[i] = ( unsigned char )i;


//while(1)
    Hash( digestLength, buf, 1024,hash);

  return 0;
}

