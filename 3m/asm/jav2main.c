#include <stdio.h>
#include <stdlib.h>
int f1test(int a, int b, int c)
{
  return (a*b)+c;
}


int f2test(int a, int b, int c)
{
  return a*(b+c);
}


int f3test(int a, int b, int c)
{
  return (a+b+c)/3;
}

int f4test(int a, int b, int c, int d)
{
  return (a*b)/(c*d);
}

int f5test(int a, int b, int c, int d, int e)
{
  return 3+a*b/(c*d+e);
}


#define test3(NAME) for(i=0; i<n; ++i)			\
    {							\
      int a = rand();					\
      int b = rand();					\
      int c = rand();					\
      if( NAME (a,b,c) == NAME ## test(a,b,c) ){	\
	printf("OK\n");					\
      } else {						\
	printf("hiba\n");				\
      }							\
    }							\
  
int main()
{
  int i;
  int n=10;
  test3(f1);
  test3(f2);
  test3(f3);

}
