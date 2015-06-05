#include <stdio.h>

void prn(long *p, long n){
  long i;
  for(i=0; i<n; i++) printf("%ld, ", p[i]);
  printf("\n");
}

void zero(long *p, long n){
  long i;
  for(i=0; i<n; i++) p[i] = 0;
}

void fc(long *p, long n, long a, long b){
  long i;
  for(i=0; i<n; i++)
    p[i] = a*i+b;
}


int main(){
  long a[]={0,0,0,0,0};
  prn(a,5);
  fc(a,5, 10, 42); prn(a,5);
  zero(a,5); prn(a,5);
  fa(a,5,10,42); prn(a,5);
  return 0;
}
