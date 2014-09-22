
unit testunit;
interface
  procedure pubproc(x:integer);
implementation
  procedure pubproc(x:integer);
  begin
    writeln('Ez a testunit pubproc(',x,')');
  end;
begin { a unit törzse }
  writeln('Ebben a programban szerepel az hogy "uses testunit;"');
end.
