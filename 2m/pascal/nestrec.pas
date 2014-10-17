program nestrec;
const 
   maxsize = 100;
type 
   month_t  = 1..12;
   day_t    = 1..31;
   status_t = (single, inarel);
   date_t   = record
		 day   : 1..31;
		 month : 1..12;
		 year  : shortint
	      end;     
   person_t = record   
		 name	: string;
		 status	: status_t;
		 birthd	: date_t;
	      end;	
procedure init_date(var dt : date_t; y :shortint; m:month_t; d:day_t);
begin 
   dt.year := y;
   dt.month := m;
   dt.day := d;
end;

   procedure init_person(var p:person_t; n : string; s : status_t; y:shortint; m :month_t; d:day_t);
   begin
      p.name := n;
      p.status := s;
      init_date(p.birthd,y,m,d);
   end;

function person_before(p1,p2 : person_t):boolean;
begin
   if p1.name < p2.name then person_before := true
   else person_before := false;
end;
   

{procedure sort(var db : db_t);
var
   p1, p2 :  person_t;
begin
   b := 
   if person_less(p1,p2) then
end;
}
var
   db : array[1..maxsize] of person_t;
   p  : person_t;
begin
   writeln('Minden OK');
   
   
   {while p.name <> '*' do begin
      // read_person(p);
   end;}
   // sort(db);

   {while p.name <> '*' do begin
      // write_person(p);
   end;}
end.
