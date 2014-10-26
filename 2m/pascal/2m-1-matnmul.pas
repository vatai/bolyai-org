
program matnmul;
const
   MaxSize = 1000;
type
   matrix = array[1..MaxSize,1..MaxSize] of integer;
procedure writemat(n:integer; M : matrix);
var i,j : integer;
begin
   for i := 1 to n do begin
      for j := 1 to n do begin
         write(M[i,j]:4);
      end;
      writeln;
   end;
end; { Újrahasznosítás!!! }
function randmat(n:integer) : matrix;
var 
   i,j : integer;
begin
   for i := 1 to n do
      for j := 1 to n do
         randmat[i,j] := random(10)-5;
end;
   { Majdnem újrahasznosítás }
function mulmat(n:integer; a,b : matrix):matrix;
var 
   i,j,t : integer;
begin
   for i := 1 to n do
      for j := 1 to n do
         mulmat[i,j]:=0;
   for i := 1 to N do
      for j := 1 to n do
         for t := 1 to n do
            mulmat[i,j]:=mulmat[i,j] + a[i,t]*b[t,j]
end;  
var
   a,b,c : matrix;
   n : integer;
begin
   randomize;
   // n:=4; 
   readln(n);
   a:=randmat(n);  writemat(n,a);  writeln;
   b:=randmat(n);  writemat(n,b);  writeln;
   c:=mulmat(n,a,b); writemat(n,c); writeln;
end.
