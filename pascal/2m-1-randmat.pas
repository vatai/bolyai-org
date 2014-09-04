
program randmat;
const
   MAXDIM = 5;
type
   matrix = array[1..MAXDIM] of array[1..MAXDIM] of integer;

function randmat : matrix;
var 
   i,j : integer;
begin
   randomize;
   for i := 1 to MAXDIM do
      for j := 1 to MAXDIM do
         randmat[i][j] := random(100)+1;
end;
procedure writemat(M : matrix);
var i,j : integer;
begin
   for j := 1 to MAXDIM do begin
      for i := 1 to MAXDIM do begin
         write(M[i][j]:3);
         write(' ');
      end;
      writeln;
   end;
end;
var A : matrix;
begin
   A := randmat;
   writemat(A);
end.
