#include <stdio.h>

int main(int argc, char *argv[])
{
  int i;
  int a[10];
  int n = sizeof(a)/sizeof(a[0]);
  // n == 100 a tomb merete

  int x;
  scanf("%d",&x);
  array(x,a,n); // array fuggveny assemblyben!!!
  // a[] = [0,x,2x,3x,...]
  /**********
  int rax=0;
  for(i=0;i<n;i++){
    // a[i] = rax;
    *a = rax;
    rax += x;
    a += 1; // add rsi,4
  }
  *************/
  for(i=0; i<n; i++)
    printf("%d, ", a[i]);
  printf("\n");

  return 0;
}
