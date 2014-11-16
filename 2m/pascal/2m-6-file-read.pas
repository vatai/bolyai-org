
program file_read;
var
   ifile : file of integer;
   cfile : file of char;
   tfile : text;
   i     : integer;
   c     : char;
   t     : string;
begin
   assign(ifile,'int_file');
   reset(ifile);
   read(ifile,i);
   writeln(i);
   read(ifile,i);
   writeln(i);
   close(ifile);
   assign(cfile,'char_file.txt');
   reset(cfile);
   while not eof(cfile) do begin
     read(cfile,c);
     writeln('cfile: ',c);
   end;
   close(cfile);
   assign(tfile,'text_file.txt');
   reset(tfile);
   readln(tfile,t);
   writeln(t);
   readln(tfile,t);
   writeln(t);
   close(tfile);
end.
