
program file_advanced;
var
   f : text;
   i : integer;
begin
   assign(f,'problem.txt');
   rewrite(f);
   writeln(f,'1 2 3'); // 1. sor
   writeln(f,'  10       20     30'); // 2. sor
   writeln(f); // 3. sor 
   writeln(f,'  100  200  300  '); // 4. sor
   writeln(f); // 5. sor 
   writeln(f,'     '); // 6. sor
   close(f);
   reset(f); 
   { '1 2 3' olvasása és kiírása: } read(f,i); writeln(i); read(f,i); writeln(i); read(f,i); writeln(i);
   writeln(eoln(f));     // true: 3 után sor vége
   { '  10       20     30' olvasása és kiírása: }  read(f,i); writeln(i); read(f,i); writeln(i); read(f,i); writeln(i);
   writeln(eoln(f));     // true: 30 után sor vége
   { '  100  200' olvasása és kiírása: } read(f,i); writeln(i); read(f,i); writeln(i); 
   writeln(eoln(f));     // false: 200 után nincs sor vége
   writeln(seekeoln(f)); // false: 200 után még van 300 
   writeln(eoln(f));     // false: tehát nem ugrik előre 
   { '  300  ' olvasása és kiírása: } read(f,i); writeln(i);
   writeln(eoln(f));     // false: 300 után van pár üres hely
   writeln(seekeoln(f)); // true: csak üres helyek vannak
   writeln(eoln(f));     // true: előre ugrott
   writeln(eof(f));     // false: nem a fájl vége
   writeln(seekeof(f)); // true: csak üres helyek és sor végék maradtak
   writeln(eof(f));     // false: seekeof nem ugri előre
   close(f);
   reset(f);
   { ha csak eof => csomó '===' a végén }
   while not seekeof(f) do begin 
      { ha csak eoln => akkor egy 0 a 300 után }
      while not seekeoln(f) do begin 
         read(f,i);  writeln(i);
      end;
      writeln('==='); readln(f);
   end;
   close(f);
end.
