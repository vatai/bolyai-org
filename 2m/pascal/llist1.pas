program llist;
type 
   node_t = record
	       value : integer;
	       next  : ^node_t;
	    end;     
   list_t = ^node_t;

procedure writelist(a : list_t);
begin
   while a <> nil do begin
      write(a^.value);
      write(', ');
      a := a^.next;
   end;
   writeln;
end;

procedure insert(var a : list_t; v : integer);
var
   tmp : list_t; { ^node_t} 
   t   : list_t;
begin
   new(tmp);
   tmp^.value := v;

   if a = nil then begin { ures lista }
      a := tmp;
      tmp^.next := nil;
   end else begin { nem üres lista }
      if v < a^.value then begin
	 tmp^.next := a;
	 a := tmp;
      end else begin
	 t := a;
	 while (t^.next <> nil) and (t^.next^.value < v) do 
	    t := t^.next;
	 { t^.next >= v }
	 tmp^.next := t^.next;
	 t^.next := tmp;
      end;
   end;
end;

procedure append(var a,b : list_t);
begin
   if a = nil then begin 
      a:=b
   end else begin
      while a^.next <> nil do a := a^.next;
      { a^.next = nil }
      a^.next := b;
   end;
end;

function append2(a,b : list_t) : list_t;
begin
   append2 := a;
   if a = nil then begin
      append2 := b;
   end else begin
      while a^.next <> nil do a := a^.next;
      { a^.next = nil }
      a^.next := b;
      { append2 := ???? }
   end;
end;

procedure delete(var a : list_t; v : integer);
var
   tmp : list_t;
begin
   if a^.value <> v then begin
      while a^.next^.value <> v do 
	 a := a^.next;
      tmp := a^.next;
      a^.next := tmp^.next;
      dispose(tmp);
   end else begin
      tmp := a^.next;
      dispose(a);
      a := tmp;
   end;
end;

function find(a	: list_t; v : integer): list_t;
{ vissza adja a pointert az elso 'v' erteku node_t-re }
{ n := find(lst, 55); // utana n^.value = 55 }
{ writeln( find(lst, 55)^.value );  }
begin
   if a <> nil then begin
      while a^.value <> v do a := a^.next;
      { a^.value = v }
      find := a;
   end else begin
      find := nil;
   end;
end;

var
   l1,l2 : list_t;
   tmp	 : node_t;
   x	 : integer;
begin

   { HF: irj az adott muveletek segitsegevel egy rendezest }
   writeln('hello');

   l1 := nil;
   x := 1;
   while x <> 0 do begin
      readln(x);
      insert(l1, x);
      writelist(l1); 
   end;

end.
