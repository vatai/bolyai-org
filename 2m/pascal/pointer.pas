program ptr;
var
   p  : ^integer;
   x  : integer;
begin
   x := 4;
   writeln(x);
   p := @x;
   writeln(p^);
   p^:=3;
   writeln(x);

   p:=nil;
   // p^:=3;
   new(p);
   writeln(p^);
   p^:=0;
   writeln(p^);
   
   dispose(p);

   //p:=@x;


end.
