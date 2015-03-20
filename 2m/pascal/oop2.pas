program oop2;

type 
   node_t = record
	       value : integer;
	       next  : ^node_t;
	    end;     


   list_t = object
      list : ^node_t;
      procedure writelist;
      procedure insert(v : integer);
   end;			 

procedure list_t.writelist;
var
   aktualis : ^node_t;
begin
   { writeln('mehivtuk a list.write eljarast');}
   aktualis := list;
   while aktualis <> nil do begin
      write(aktualis^.value, ', ');
      aktualis := aktualis^.next;
   end;
   writeln;
end;

procedure list_t.insert(v	: integer);
var
   elso	: ^node_t;
begin
   { writeln('meghivtuk a list.insert eljarast');}
   new(elso);
   elso^.value := v;
   elso^.next := list;
   list := elso;
end;

var
   L1, L2 : list_t;
begin
   L1.insert(4);
   L1.insert(42);
   L1.insert(21);
   L1.insert(13);
   L1.writelist;
end.
