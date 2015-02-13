program bintree;
type 
   node_t    = record
		  value	: integer;
		  left	: ^node_t;
		  right	: ^node_t;
	       end;	
   bintree_t =  ^node_t;

procedure ins(var root : bintree_t; v:integer);
{ beszuras }
var
   tmp : ^node_t;
begin
   if root = nil then begin
      new(tmp);
      tmp^.value := v;
      root := tmp;
      root^.left := nil;
      root^.right := nil;
   end else begin 
      if root^.value < v then
	 ins(root^.right,v) 
      else
	 ins(root^.left,v);
   end;
end;

procedure trav(root : bintree_t);
{ bejaras }
begin
   if root <> nil then begin
      trav(root^.left);
      writeln(root^.value);
      trav(root^.right);
   end;
end;
var
   x	: integer;
   tree	: bintree_t;

begin
   x:=1;
   while x <> 0 do begin
      readln(x);
      ins(tree,x);
   end;
   trav(tree);
end.
