#include <stdio.h>

int main(int argc, char *argv[])
{
  int a[]={13,42,69,88,3,14,23,4};
  int x;
  int n = sizeof(a)/sizeof(a[0]);
  int s;

  printf("sizeof(a[])=%d\n",n);
  printf("sizeof(a[0])=%ld\n",sizeof(a[0]));
  s = arraysum(a,n);
  printf("arraysum() = %d\n",s);
  return 0;
}
