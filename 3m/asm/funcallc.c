int printf(char *,...);

void funcall();
void funcall1(int,char*);
void funcall2(int);

int main(){
  char rdistr[] = "ide mutat az rdi\n"; // std konvertalhato char* tipusra

  funcall(/* RDI, RSI, RDX, RCX, R8, R9 */);

  funcall1(0,rdistr);

  funcall2(132);
  
  return 0;
}
