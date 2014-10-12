
program sets;
type
   basic_colors = (red_color,yellow_color,blue_color);
   color        = set of basic_colors;
   digit_set    = set of 0..9;
   abc_set      = set of 'a'..'z';
procedure write_set(s : color);
var c :  basic_colors;
begin
   write('{');
   for c := red_color to blue_color do
      if c in s then break;
   if s <> [] then write(c); 
   inc(c); // az inc(c) beállítja a 'küvetkező' színt
   for c:= c to blue_color do
      if c in s then write(',',c);
   writeln('}');
end;
var
  red,orange,yellow : color;
  digits : digit_set;
  letters : abc_set;
begin
red := [red_color]; yellow := [yellow_color];
orange := [red_color,yellow_color];
digits := [4,2];
letters := ['a','b','c'];
if orange = ([red_color] + [yellow_color]) then 
  writeln('Union works');
if digits = ([1,2,3,4] * [2,4,6,8]) then 
  writeln('Intersection works');
if letters = (['a','b','c','d'] - ['d']) then 
  writeln('Difference works');
write_set(orange);
end.
