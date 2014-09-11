program randmat;
const 
   N =  4;
type 
   matrix = array[1..N,1..N] of integer;

function randmat : matrix;
var
   i,j : integer;
begin
   for i:=1 to N do
      for j:=1 to N do
	 randmat[i,j] := random(100)+1;
end;

procedure writemat(m : matrix);
var
   i,j : integer;
begin
   for i:=1 to N do begin
      for j:=1 to N do write(m[i,j]:3);
      writeln;
   end;
end;
var
   a : matrix;
begin
   a := randmat;
   writemat(a);
end.
