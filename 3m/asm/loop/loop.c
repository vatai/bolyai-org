#include <stdio.h>

long fc(long n){
  int i;
  long r=0;
  for(i=1; i<=n; i++){
    r+=i;
  }
  return r;
}

long sc(long *p, long n){
  long r =0;
  long i;
  for(i=0; i<n; i++)
    r += p[i];
  return r;
}

int main(){
  long a[] = { 2,3,5,7};

  printf("sc(a,3)=%ld\n", sc(a,3));
  printf("sc(a,4)=%ld\n", sc(a,4));

  /*
  printf("fc(10)=%ld\n",fc(10));
  printf("fc(7)=%ld\n",fc(7));
  printf("fa(10)=%ld\n",fa(10));
  printf("fa(7)=%ld\n",fa(7));
  */
  return 0;
}
