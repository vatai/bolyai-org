#include <stdio.h>

// egy tömb feldolgozása, pl sum()

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

  printf("sa(a,3)=%ld\n", sa(a,3));
  printf("sa(a,4)=%ld\n", sa(a,4));

  return 0;
}
