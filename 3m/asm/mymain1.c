#include <stdio.h>
#include <time.h>

int main(int argc, char *argv[])
{
  int a[1000000]={13,42,69,88,3,14,23,4};
  int x;
  int n = sizeof(a)/sizeof(a[0]);
  int s;
  clock_t akkor;
  clock_t most;

  printf("sizeof(a[])=%d\n",n);
  printf("sizeof(a[0])=%ld\n",sizeof(a[0]));

  akkor = clock();
  // for(int i=0; i<1000; i++)
    s = arraysum(a,n);
  most = clock();
  
  // printf("arraysum() = %d\n",s);
  printf("Idő: %f\n",(float)(most - akkor)/CLOCKS_PER_SEC);
  return 0;
}
