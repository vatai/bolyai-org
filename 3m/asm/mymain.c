#include <stdio.h>

int main(int argc, char *argv[])
{
  int a[]={13,42,69,88,3,14,23,3};
  int x;
  int n = sizeof(a)/sizeof(a[0]);
  int s;

  x = asd(4);
  printf("%d\n",x);

  printf("sizeof(x)=%d\n",n);
  // s = arraysum(a,n);
  printf("arraysum() = %n\n",s);
  return 0;
}
