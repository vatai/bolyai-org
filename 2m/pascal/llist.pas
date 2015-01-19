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
      writeln(a^.value);
      a := a^.next;
   end;
end;

procedure insert(a : list_t; v : integer);
begin
   { HF : az insert beszur egy 'v' értékű element az 'a' lista
elejére! } 
end;

var
   lst : list_t;
begin
   writeln('hello');

   new(lst);
   lst^.value := 42;

   new(lst^.next);
   lst^.next^.value := 21;

   new(lst^.next^.next);
   lst^.next^.next^.value := 7;

   lst^.next^.next^.next := nil;

   writelist(lst);
   // insert(lst, 100);
   // writelist(lst); // 100, 42, 21, 7
end.
