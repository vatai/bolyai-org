#include <stdio.h>

int main(){
  int a = rand();
  int b = rand();
  int i;
  int n = 10;
  
  printf("f1:");
  for(i=0;i<n;++i){
    a = rand(); b = rand();
    if( a+b != f1(a,b) ) printf("hiba");
    else printf("OK");
  }
  printf("\n");

  printf("f2:");
  for(i=0;i<n;++i){
    a = rand(); b = rand();
    if( a-b != f2(a,b) ) printf("hiba");
    else printf("OK");
  }
  printf("\n");
}
