program oop4;
const
   MAXSIZE = 10;
type 
   bird		   = object 
   name	 : string; 
   count : integer;  static;
   constructor create(s:string);
   procedure fly; virtual;
end;

ostrich = object(bird)
   procedure fly; 
end;

constructor bird.create(s:string);
begin
   name := s;
   count := count + 1;
end;

procedure bird.fly;
begin
   writeln(name, ' is flying.');
end;

procedure ostrich.fly;
begin
   writeln(name, ' can not fly. But he can run really fast.');
end;

var
   abird     : bird;
   abirdptr  : ^bird;
   anostrich    : ostrich;
   anostrichptr : ^ostrich;
   birds     : array[1..MAXSIZE] of ^bird;
   birdname  : string;
   errcode   : word;
   i	     : integer;
begin 
   {
   abird.create('Woody woodpecker');
   anostrich.create('Brostrich');

   abird.fly;
   anostrich.fly;
   }

   while bird.count < MAXSIZE do begin
      str(bird.count,birdname);

      if bird.count mod 2 = 0 then begin
	 birdname := 'BIRD ' + birdname;
	 new(abirdptr,create(birdname));
	 birds[bird.count]:=abirdptr;
      end else begin
	 birdname := 'OSTRICH ' + birdname;
	 new(anostrichptr,create(birdname));
	 birds[bird.count]:=anostrichptr;
      end;
      for i := 1 to bird.count do begin
	 birds[i]^.fly;
      end;
      writeln;
   end;
   writeln(bird.count);
   birds[1]^.fly;
end.
