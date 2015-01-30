{HF:= ÍRJUNK PROIRITÁSOS LISTÁT.

Módosítsuk úgy az Insertet, hogy a lista állandóan rendezett
maradjon.

Például: 
Insert(lst, 10);
lst => 10;
Insert(lst, 5);
lst => 5 => 10;
Insert(lst, 7);
lst => 5 => 7 => 10;
Insert(lst,8);
lst => 5 => 7 => 8 => 10;
}
program Arnold;
var
   p : ^integer;
   q : integer;
begin
   P:=@q;
   q:=p^;
   p^:=q;
   new(p);
   p^:=10;
   
   dispose(p);
end.
