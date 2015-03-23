program oop2;

{$MODE OBJFPC}  


type 
   node_t = record
	       value : integer;
	       next  : ^node_t;
	    end;     

   
   list_t = class
      list : ^node_t;
      procedure writelist;
      procedure push(v : integer); virtual;
      function pop: integer;
      constructor create;
      destructor free;
   end;			 

   priority_list_t = class(list_t)
	 procedure push(v :  integer); override;
   end;

procedure priority_list_t.push(v : integer);
var
   tmp,newnode : ^node_t;
begin
   new(newnode);
   newnode^.value := v;
   newnode^.next := nil;

   tmp := list;
   if tmp = nil then begin
      {writelist;
      writeln('b1:',v);}
      list:=newnode;
   end else if (list^.value >= v) then begin
      {writelist;
      writeln('b2:',v);}
      newnode^.next := list;
      list := newnode;
   end else begin
      {writelist;
      writeln('b3:',v);}
      while (tmp^.next <> nil) and (tmp^.next^.value < v) do
	 tmp := tmp^.next;
      newnode^.next := tmp^.next;
      tmp^.next := newnode;
   end;
end;

constructor list_t.create;
begin
   writeln('create');
   list := nil;
end;

destructor list_t.free;
begin
   writeln('free');
   list := nil;
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
   L1	     : list_t;
   // L1, L2 : list_t;
   x	     : integer;
begin
   x:=1;
   L1 := priority_list_t.create;
   L1.push(15);
   L1.push(20);
   L1.push(5);
   L1.push(25);
   L1.push(10);
   L1.writelist;
   {while x <> 0 do begin
      readln(x);
      if x = -1 then 
	 writeln(L1.pop)
      else 
	 L1.push(x);
      L1.writelist;
   end;
   }
   L1.pop;
   L1.pop;
   L1.free;
end.
