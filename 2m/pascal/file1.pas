program file1;
var
   ifile : file of integer;
   cfile : file of char;
   tfile : text;
   str	 : string;
begin
   // writeln(sizeof(char));

   assign(ifile,'int_file');
   rewrite(ifile);
   write(ifile,1);
   write(ifile,111);
   close(ifile);
   
   
   // irjuk a '2' és 'm' karaktereket a 'char_file.txt' fájlba
   assign(cfile,'char_file.txt');
   rewrite(cfile);
   write(cfile,'2');
   write(cfile,'m');
   close(cfile);
   
   // irjuk a '2m' szoveget a 'text_file.txt' fájlba
   assign(tfile, 'text_file.txt');
   rewrite(tfile);
   writeln(tfile,'2m');
   close(tfile);
   
   append(tfile);
   writeln(tfile,'0123456789');
   close(tfile);
end.
