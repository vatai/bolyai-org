
program declmat;
var 
   M   : array[1..4,1..4] of integer;
   i,j : integer;
begin
   randomize; 
   for j:=1 to 4 do       {-----Feltöltés}
      for i:=1 to 4 do
         M[i,j] := random(10);
   for j:=1 to 4 do begin {-----Kiírás}
      for i:=1 to 4 do 
         write(M[i,j]:3);
      writeln; 
   end;
end.
