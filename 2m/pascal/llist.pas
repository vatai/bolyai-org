program llist;
type 
   node_t = record
	       value : integer;
	       next  : ^node_t;
	    end;     
procedure writelist(l :^node_t);
begin
end;

var
   lst : ^node_t;
begin
   writeln('hello');
   new(lst);
   lst^.value := 3;
   new(lst^.next);
   lst^.next^.value := 5;
   lst^.next^.next := nil;
   writelist(lst);
end.
