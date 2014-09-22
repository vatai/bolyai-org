
program randmat;
const
   N = 5;
type
   matrix = array[1..N,1..N] of integer;
function randmat : matrix;
var 
   i,j : integer;
begin
   for i := 1 to N do
      for j := 1 to N do
         randmat[i,j] := random(100)+1;
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
var A : matrix;
begin
   randomize;
   A := randmat;
   writemat(A);
end.
