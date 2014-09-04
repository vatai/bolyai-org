
{ -*- mode: pascal; compile-command: "fpc 2m-1-const-type.pas && ./2m-1-const-type.pas" -*- }
program typedemo;
const
   MAXDIM = 1000;
type
   Matrix = array[1..MAXDIM] of array[1..MAXDIM] of integer;
begin {...} end.
