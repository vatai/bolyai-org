#include <stdio.h>

int main()
{
  int a[3] = {1, 10, 100};
  int n = sizeof(a)/sizeof(*a);
  int x = ujfuggveny(a,n);

  printf("Hello world %d\n",x);
  return 0;
}
