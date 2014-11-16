program file2;
var
   ifile : file of integer;
   cfile : file of char;
   tfile : text;
   i	 : integer;
   c	 : char;
   t	 : string[5];
begin
   assign(ifile,'int_file');
   assign(cfile,'char_file.txt');
   assign(tfile,'text_file.txt');

   // file megnyitasa olvasasra!
   reset(ifile);
   reset(cfile);
   reset(tfile);

   read(ifile,i);
   writeln(i);
   read(ifile,i);
   writeln(i);

   read(cfile,c);
   writeln(c);
   read(cfile,c);
   writeln(c);

   readln(tfile,t);
   writeln(t);
   read(tfile,t);
   writeln(t);

   close(ifile);
   close(cfile);
   close(tfile);
end.
