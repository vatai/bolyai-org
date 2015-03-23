program oop2;

type 
   node_t = record
	       value : integer;
	       next  : ^node_t;
	    end;     

   
   list_t = object
      list : ^node_t;
      procedure writelist;
      procedure push(v : integer);
      function pop: integer;
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


procedure list_t.push(v	: integer);
var
   elso	: ^node_t;
begin
   { writeln('meghivtuk a list.insert eljarast');}
   new(elso);
   elso^.value := v;
   elso^.next := list;
   list := elso;
end;


function list_t.pop : integer;
var
   elso	: ^node_t;
begin
   if list <> nil then begin
      pop := list^.value;

      elso := list^.next;
      dispose(list);
      list := elso;
   end;
end;


var
   L1, L2 : list_t;
   x	  : integer;
begin
   x:=1;
   while x <> 0 do begin
      readln(x);
      if x = -1 then 
	 writeln(L1.pop)
      else 
	 L1.push(x);
      L1.writelist;
   end;
end.
