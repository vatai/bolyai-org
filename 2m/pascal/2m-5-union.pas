
program union;
  type
     contents_t = (notes,book,laptop);
     color_t = (red,green,blue);
  bag_t      = record
                  color         : color_t;
                  case contents : contents_t of
                    notes       : (first:char; second:char);
                    book       : (onlybook:integer);
                    laptop     : (onlylaptop:longint);
                  end;
  badbag_t = record
                color    : color_t;
                contents : contents_t;
                first    : char;
                second   : char;
                onlybook : integer;
                onlylaptop  : longint;
             end;
  var
     bag:bag_t;
  begin
     writeln(sizeof(bag_t));    { 12 }
     writeln(sizeof(badbag_t));   { 16 }
  bag.contents := notes;
  bag.first:='a';
  bag.second:='b';
  writeln(bag.first);        { a }
  writeln(bag.second);       { b }
  writeln(bag.onlybook);     { valami fura érték }
  writeln(bag.onlylaptop);   { ugyan az a fura érték }
  { felül írja a többi case-ben szereplő tagokat (first,second,onlybook)  }
  bag.contents := laptop;
  bag.onlylaptop:=1;       { output }
  writeln(bag.first);      { valami fura karakter}
  // writeln(bag.second);  { valami fura karakter ami hibát okoz }
  writeln(bag.onlybook);   { 1 }
  writeln(bag.onlylaptop); { 1 }
end.
