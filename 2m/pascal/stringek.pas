
program stringek;
var
   s1,s2,s3 : string; { = string[255] }
   short    : string[80];
   i,k      : integer;
   c        : char;
begin
s1 := 'Hello world';
writeln(s1); 

// s3 := readln; // READ NEM JÓ!!! 
s2 := '12345';
s3 := concat(s1,s2);
writeln(s3);

s3 := '!@#$%';
writeln('plus: '+s1+s2+s3);
writeln(concat('concat: ',s1,s2,s3));
i := length(s2);
// writeln('length: '+i); // NEM MŰKÖDIK!!!
// integer és string nem fűzhető össze
writeln('length: ', i);

writeln('ord(s2[0]): ', ord(s2[0]));
// s[0] 'ord()'-ja = length(s)
for i:=1 to length(s2) do 
begin
   c := s2[i];
   writeln(ord(c));
end;
{ string függvények}
i := pos('23', s2);
// ha nincs találat, 0-t add vissza!
write('pos: ');
writeln(i);
s3 := copy(s2,2,3);
writeln('copy: ' + s3);
s3 := copy(s2,3,10);
writeln('copy: ' + s3);
delete(s2,2,3);
writeln('delete: ' + s2);
s2 := '12345';
insert(s1,s2,3);
writeln('insert: ' + s2);
i:=12345;
str(i,s2);
writeln('str: '+s2);
s2 := '123a';
val(s2,i,k); 
writeln('val: ',i, '; k: ', k);
end.
