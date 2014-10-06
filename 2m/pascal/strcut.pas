
program strcut;
var
  s,a : string;
  j : integer;
begin
  // s := '1234567890oisadjfoisadj oisasda';
  readln(s);
  j := 1;
  while j <= length(s) do begin
    a := copy(s,j,10);
    writeln(a);
    j := j + 10;
  end;
end.
