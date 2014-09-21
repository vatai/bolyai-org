program unittest;

uses utest;  { <------ USES }

var
   x : integer ;
begin
   writeln('-----------------');
   uproc;   { <--- ez a 'utest' unitból jött!}
   x := mul(13,14);
   writeln(x);
end.

{ 
írni még egy programot, hogy használja az
első példa unitot.
---
  Át kell írni a matmul programo hogy
  unitot használjon!
Például:
matmul2.pas - a főprogram
mmunit.pas - a 'unit rész'
}
