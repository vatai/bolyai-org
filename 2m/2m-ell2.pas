program ell2;
type t = set of 0..9;
   r   = record 
	    x : integer;
	    c : char;
	 end; 


person_t = record
	      {. ...}
	   end;

procedure pr(s :  t);
begin
end;

function date(d	: integer; m:integer; y:integer) : date_t;

begin
   date.day := d;
   date.month := m;
   ...
end;

var
   s : set of (kek,zold,piros);
   i : integer;
   p : set of 1..100;
   v : r;
   w : r;


db :array[1..1000] of person_t;
begin
   s := [kek];
   s := s + [zold];
   s := s + [piros];
   
   // páratlan számok 1..100 a p halmazban
   p:=[];
   for i := 1 to 50 do
      p := p + [2*i-1];

   for i := 1 to 100 do
      if i in p then write(' ',i);

   with v do begin
      x := 42;
      c := 'r';
   end;

   w:=v;

   per.bday := date(14,7,1995); { date_t típus }

   
end.
