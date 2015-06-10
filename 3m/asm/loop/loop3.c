#include <stdio.h>

// segéd függvény: kiírja a tömböt
void prn(long *p, long n){
  long i;
  for(i=0; i<n; i++) printf("%ld, ", p[i]);
  printf("\n");
}

// segéd függvény: lenuláza a tömböt
void zero(long *p, long n){
  long i;
  for(i=0; i<n; i++) p[i] = 0;
}

// elemenként szorozzunk össze két vektort
void fc(long n, long *a, long *b, long *c){
  long i;
  for(i=0; i<n; i++)
    a[i] = b[i] * c[i];  
}



int main(){
  long a[5];
  long b[5] = { 2,  3, 5,  7, 11 };
  long c[5] = { 1, -1, 2, -2, 3  };
  zero(a,5);  prn(a,5);
  fc(5,a,b,c); prn(a,5);

  zero(a,5);  prn(a,5);
  fa(5,a,b,c); prn(a,5);

  return 0;
}
