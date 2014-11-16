
program file2;
var cf : file of char;
    zf : file of integer;
    c : char; p : integer;
begin
  assign(cf,'cfile.txt');
  rewrite(cf);
  { kiírjuk az első 12 karaktert }
  for c := 'a' to chr(ord('a')+11) do write(cf,c);
  close(cf);
  reset(cf);
  while not eof(cf) do begin
    p:=filepos(cf);
    read(cf,c);
    writeln(p,c);
  end;
  close(cf); { cfile.txt: abcxefghijkl }
  reset(cf);
  writeln('filesize: ', filesize(cf)); // 12
  close(cf);
  assign(zf,'cfile.txt'); reset(zf); 
  writeln('zf filesize: ', filesize(zf)); // 3 vagy 6
  close(zf);
  reset(cf);
  seek(cf,3); write(cf,'x');
  seek(cf,2); read(cf,c); writeln('pos 2=',c);
  close(cf); { cfile.txt: abcxefghijkl }
  reset(cf);
  seek(cf,8);
  truncate(cf);
  close(cf); { cfile.txt: abcxefgh }
  rename(cf,'cfile2.txt');
  reset(cf);
  write(cf,'A');
  close(cf); { cfile.txt nincs! cfile2.txt: Abcxefgh }
  erase(cf);
end.
