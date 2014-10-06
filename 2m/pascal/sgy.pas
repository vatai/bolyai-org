program sgy;

const MAX = 50;
   
type  matrix =  array[1..MAX,1..MAX] of string ;
var
   t   : matrix;
   s   : string[MAX];
   i,j,n : integer;

procedure writemat(n :integer;  t : matrix);
var i,j	: integer;
begin
   for i := 1 to n do begin
      for j := 1 to n do write(t[i,j]:(n+1));
      writeln;
   end;
end;

begin
   // s := 'abcde';
   readln(s);
   n := length(s);
   
   for i := 1 to n do
      for j := 1 to n do
	 t[i,j] := copy(s,i,j);

   writemat(n,t);
end.
