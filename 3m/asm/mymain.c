#include <stdio.h>

int main(int argc, char *argv[])
{
  int a[]={13,42,69,88,3,14,23,4};
  int x;
  int n = sizeof(a)/sizeof(a[0]);
  int s;

  x = asd(4);
  printf("%d\n",x);

  printf("sizeof(a[])=%d\n",n);
  printf("sizeof(a[0])=%d\n",sizeof(a[0]));
  s = arraysum(a,n);
  printf("arraysum() = %llx\n",s);
  return 0;
}
