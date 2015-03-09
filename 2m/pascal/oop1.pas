program oop1;
{$mode objfpc}{$H+}

type lamp_t = object
      s : boolean; // állapot
      strength: integer; 
      procedure turnon;
      procedure turnoff;
      function state: string;
   end;	    

procedure lamp_t.turnon;
begin
   s := true;
end;

procedure lamp_t.turnoff;
begin
   s := false;
end;

function lamp_t.state : string;
begin
   if s then state := 'világít'
   else state := 'nem világít';
end;

			  
var
   lamp1, lamp2 :  lamp_t;
begin
   writeln('Hello');
   
   lamp1.turnon;
   lamp2.turnoff;
   writeln('Lámpa1 állapota: ', lamp1.state);
   writeln('Lámpa2 állapota: ', lamp2.state);
   lamp2.turnon;
   writeln('Lámpa1 állapota: ', lamp1.state);
   writeln('Lámpa2 állapota: ', lamp2.state);
end.
