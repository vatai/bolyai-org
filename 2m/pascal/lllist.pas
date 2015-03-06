program lllist;
type 
   node_t = record
	       value : integer;
	       next  : ^node_t;
	       prev  : ^node_t;
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

procedure ins(var a : list_t; v : integer);
var
   tmp : list_t; { ^node_t} 
   t   : list_t;
begin
   new(tmp);
   tmp^.value := v;

   if a = nil then begin { ures lista }
      a := tmp;
      tmp^.next := nil;
      tmp^.prev := nil;
   end else if a^.next = nil then begin
      if a^.value < v then begin
	 { tmp a vegere }
	 a^.next := tmp;
	 { TODO TODO TODO }
	 tmp^.next := nil;
      end else begin
	 { tmp az elejere }
	 tmp^.next := a;
	 a := tmp;
      end      
   end else begin
      t := a;
      while (t^.next <> nil) and (t^.next^.value < v) do 
	 t := t^.next;
      { t^.next >= v }
      tmp^.next := t^.next;
      t^.next := tmp;
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
begin

   { HF: irj az adott muveletek segitsegevel egy rendezest }
   writeln('hello');

   l1 := nil;
   ins(l1, 10);
   writelist(l1); // 100, 42, 21, 7
   writeln('OK1');
   ins(l1, 20);
   writelist(l1); // 100, 42, 21, 7
   writeln('OK2');
   ins(l1, 30);
   writelist(l1); // 100, 42, 21, 7

   ins(l1, 25);
   writelist(l1); // 100, 42, 21, 7

   exit;
   l2 := nil;
   ins(l2,100);
   ins(l2,200);
   ins(l2,300);
   writelist(l2);
   writeln('----');

   // append(l1,l2);
   // l1 := append2(l1,l2);
   // writelist(l1); // 30, 20, 10, 300, 200, 100

   
   // tmp := find(l2,200)^ {<<-- itt a kalap!!!} ;
   // writeln(tmp.value);
   delete(l1,30);
   writelist(l1);
end.
