program test;
const
   N = 4;
type
   matrix = array[1..N,1..N] of integer;

function randmat : matrix;
var 
   i,j : integer;
begin
   for i := 1 to N do
      for j := 1 to N do
	 randmat[i,j] := random(10)-5;
end;

procedure writemat(M : matrix);
var i,j : integer;
begin
   for i := 1 to N do begin
      for j := 1 to N do begin
	 write(M[i,j]:4);
      end;
      writeln;
   end;
end;

function mulmat(a,b : matrix):matrix;
var 
   i,j,t : integer;
begin
   for i := 1 to N do
      for j := 1 to N do
	 mulmat[i,j]:=0;
   for i := 1 to N do
      for j := 1 to N do
	 for t := 1 to N do
	    mulmat[i,j]:=mulmat[i,j] + a[i,t]*b[t,j]
end;
var
   a,b,c : matrix;
begin
   randomize;
   a:=randmat;
   writemat(a);
   writeln;
   b:=randmat;
   writemat(b);
   writeln;
   c:=mulmat(a,b);
   writemat(c);
end.
