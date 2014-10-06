program namesort;
const MAX    =  100;
type strings = array[1..MAX] of string;

function cmp(s1,s2 : string) : boolean;	
{ true if s1 < s2; false otherwise }
{ lexikografikus rendezés }
var
   i,l1,l2 : integer;
begin
   l1 := length(s1);
   l2 := length(s2);
   i:=1;
   while (s1[i]=s2[i]) 
      and (i < l1+1) 
      and (i < l2+1) do 
      begin
	 i:=i+1;
      end;
   if (l1 = i+1) and (l1 < l2) then cmp := true;
   cmp := s1[i] < s2[i];
end;

procedure sort(var t : strings);
begin
   // t[i] < t[j] helyett cmp(t[i],t[j]) kell!
end;

var
   i,n	 : integer;
   t	 : strings;
   s1,s2 : string;
begin
   
   s1:='abc'; 
   s2:='abc';
   writeln(cmp(s1,s2));

   // readln(n);

   // for i := 1 to n do readln(t[i]);

   sort(t);
   
   // for i := 1 to n do writeln(t[i]);
      
end.
