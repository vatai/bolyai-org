
program declmat;
var 
   M   : array[1..4,1..4] of integer;
   i,j : integer;
begin
   randomize; 
   for i:=1 to 4 do       {-----Feltöltés}
      for j:=1 to 4 do
         M[i,j] := random(10);
   for i:=1 to 4 do begin {-----Kiírás}
      for j:=1 to 4 do 
         write(M[i,j]:3);
      writeln; 
   end;
end.
