program matmul;
{ Mi kell
  - 3 mátrix
  - type matrix
  - eljaras  a szorzásra 
     - matmul function
  -
}
const
   N = 4;
type 
   matrix = array[1..N,1..N] of integer;
function matmul(x,y :matrix ) : matrix;
var
   sor,oszlop,k	: integer;
begin
   // z_{i,j} = \sum_{k=1}^N x_{i,k} y_{k,j}
   for sor := 1 to N do
      for oszlop := 1 to N do begin
	 { szumma }
	 matmul[sor,oszlop] := 0;
	 for k := 1 to N do
	    matmul[sor,oszlop] := matmul[sor,oszlop] +  x[sor,k] * y[k,oszlop];
      end;
end;

procedure writemat(x : matrix);
var
   sor, oszlop : integer;
begin
   for sor:=1 to N do begin
      for oszlop:=1 to N do begin
	 write(x[sor,oszlop]:4);
      end;
      writeln;
   end;
   writeln;
end;
procedure randmat(var x :matrix );
var
   sor, oszlop : integer;
begin
   for sor:=1 to N do 
      for oszlop:=1 to N do 
	 x[sor,oszlop]:=random(6)-3;
end;
var
   A,B,C : matrix;
begin
   
   writeln('-----------');
   // randomize;
   randmat(A);
   randmat(B);
   writemat(A);
   writemat(B);
   C := matmul(A,B);
   writemat(C);
end.
