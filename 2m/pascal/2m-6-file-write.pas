
program file_write;
var
   ifile : file of integer;
   cfile : file of char;
   tfile : text;
begin
   assign(ifile,'int_file');
   assign(cfile,'char_file.txt');
   rewrite(ifile);
   rewrite(cfile);
   { írjuk az 1 és 111 számokat ki az 'int_file.txt' fájlba }
   write(ifile,1);
   write(ifile,111);
   { írjuk a '2' és 'm' karaktereket a 'char_file.txt' fájlba }
   write(cfile,'2');
   write(cfile,'m');
   // irjuk a '2m' szoveget a 'text_file.txt' fájlba
   assign(tfile, 'text_file.txt');
   rewrite(tfile);
   writeln(tfile,'2m');
   close(tfile);
   assign(tfile, 'text_file.txt');
   append(tfile);
   writeln(tfile,42);
   close(tfile);
end.
