#include <stdio.h>

long ft(long x){
  long r;
  if(x < 10) r= 21;
  else r= 42;
  return r+1;
}

int main(){
  printf("ft(5) = %ld\n", ft(5));
  printf("ft(15) = %ld\n", ft(15));
  
  printf("fa(5) = %ld\n", fa(5));
  printf("fa(15) = %ld\n", fa(15));
  return 0;
}
