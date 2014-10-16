
program records;
type 
   status_t = (single, inarelationship, itscomplicated);
   person_t = record
     name       : string;
     birth_year : integer;
     status     : status_t;
   end;
procedure init_person(var person : person_t; n : string; by : integer; s : status_t);
begin
   with person do begin
      name := n;
      birth_year := by;
      status := s;
   end;
end;
procedure write_person(person : person_t);
begin
   // HF: átírni with paranccsal!
   writeln('Name: ', person.name);
   writeln('Birth year: ', person.birth_year);
   writeln('Relationship status: ', person.status);
end;
var
mrx,mrsy : person_t;
begin
   init_person(mrx,'Mr X.', 1996, single);
   mrsy := mrx;
   mrsy.name := 'Mrs. Y';
   write_person(mrx);
   write_person(mrsy);
end.
