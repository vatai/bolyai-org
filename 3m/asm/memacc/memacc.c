#include <stdio.h>

void ft(long *p){
  // ha mov rdi, 42; akkor p = 42. Csillag hiányzik!
  *p = 21;
}

void f2t(long *p){
  printf("%ld\n", *p);
}

void f3t(long *p){
  p[0] = 1;  // *(p+0) = 1
  p[1] = 2;
  *(p+2) = 3;
}

long f4t(long b){
  if(b==0) return 21;
  else return 42;
}

// void f1(long *p); // assemblyben

int main(){
  long x;
  x = 10;
  printf("Hello %ld\n",x);

  ft( &x );
  printf("Hello %ld\n",x);

  f1( &x );
  printf("Hello %ld\n",x);  

  x = 13;
  f2t( &x ); // ird ki hogy 13

  long arr[3];
  arr[0] = 0; arr[1] = 0; arr[2] = 0;
  printf("arr: %ld, %ld, %ld\n", arr[0], arr[1], arr[2]);
  f3t(arr);
  printf("arr: %ld, %ld, %ld\n", arr[0], arr[1], arr[2]);
	 
  f3(arr);  // &(arr[0]) == arr
  printf("arr: %ld, %ld, %ld\n", arr[0], arr[1], arr[2]);

  printf("proba1: %ld\n", f4t(0) );
  printf("proba2: %ld\n", f4t(13) );
}
