program ell22;
uses ell22unita;
uses ell22unitb;

var
   egya	: a;
   egyb	: b;
begin
   writeln('Hello');
   // egya.priv:=20;  // hiba
   // writeln(egya.priv); // hiba
   egya.setpriv(10);
   writeln(egya.getpriv);

   // egyb.prot:=20; // hiba
   // writeln(egyb.prot); // hiba
end.
