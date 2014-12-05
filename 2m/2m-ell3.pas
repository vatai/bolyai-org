program mintaharom;
type
   int_file_t = file of integer;
{  0. deklaraljuk a megfelelo fajlokat. }

{ 1. gen_rand_int_file: toltsuk fel a fajlt integerekkel 1..100,
osszesen n db }

procedure gen_rand_int_file(var f : int_file_t; n : integer)
begin
   reset(f);
   for i := 1 to n do 
      write(f,random(100)+1);
   close(f);
end;

procedure write_int_file(var f : int_file_t);
begin
   reset(f);
   while not eof(f) do begin
      read(f,x);
      writeln(x);
   end;
   close(f);
end;

{ 2. Addjuk ossze a rand fajl tartalmat. }
procedure sum_int_file(var f : int_file_t);
begin
end;
			      
{ 3. keressuk meg egy fajlban az egy szot es csereljuk ki }
procedure subs_file(var f : text; mit:string; mire:string);
begin
end;


{ 4. a fajlban a legkisebb integert csereljuk ki 0-ra }
procedure max_sub(var f	: int_file_t)
begin
end;

var
   s	 : integer;
   ifile : int_file_t;
   tfile : text;
begin
   assign(ifile,"munka");
   gen_rand_int_file(ifile,20);

   s := sum_int_file(ifile);
   writeln('A szamok osszege' ,s);
   
   assign(tfile,'2m-ell3.pas');
   subs_file(tfile,'alma','korte');

   
end.
