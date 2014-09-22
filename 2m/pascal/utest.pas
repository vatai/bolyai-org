unit utest;

Interface
procedure uproc;
function mul(x,y : integer) : integer;

Implementation
procedure uproc;
begin
   writeln('Hello, ez az UPROC');
end;

function mul(x,y : integer) : integer;
begin
   writeln('Ez egy unitos szorzás');
   mul := x*y;
end;

begin
   writeln('Ebben a programban van "uses utest" parancs');
end.
