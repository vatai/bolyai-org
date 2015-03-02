// procedure insert3( { lehet hogy ezt is ti kell hogy kitöltsétek } );
// begin
// a paraméte
// 1. feladat: ezt kell megirni
// end;


{
Egyszerűsített ellenőrző:

1. Insert3, amelyik a lista 3. helyére teszi be az értéket. (ha a
lista rövidebb mint 2, akkor az utolsó helyre teszi be az értéket).
Példa:
insert3(l,1);
// l -> 1
insert3(l,2);
// l -> 1 -> 2
insert3(l,3);
// l -> 1 -> 2 -> 3
insert3(l,10)
// l -> 1 -> 2 -> 10 -> 3
insert3(l,20)
// l -> 1 -> 2 -> 20 -> 10 -> 3

2. Lista alap műveletek! Insert, delete, find stb.  

prcedure copylist(list_t src, dst);

Például: deleteEven(lst) az lst listából kitörli a páros számokat.

3. 


}

{ 

1. Lista alap műveletek! Insert, delete, find stb.  

prcedure copylist(list_t src, dst);

Például: deleteEven(lst) az lst listából kitörli a páros számokat.

2. Prioritásos lista: mindig rendezett.  

Például: írjunk egy programot amely beolvas 10 elemet és rendezve írja
ki őket!

4. Duplán láncolt lista: van value, next, prev (azaz previous = előző).
Ehhez a műveletek megírása: insert, delete, find.

5. és 6. A fentiek közül valami, + előző anyagrészek (pl fájlok).
Például, az első listába pakoljuk a páros számokat, második listába
pakoljuk a páratlan számokat (a számokat egy fájlból olvassuk).

}

program delete_paros;
type
   node_t = record
	       value : integer;
	       next  : ^node_t;
	    end;
   list_t = ^node_t;

procedure writelist(a : list_t);
begin
   while a <> nil do begin
      writeln(a^.value);
      a := a^.next;
   end;
end;

procedure insert(var a : list_t; v : integer);
var
   tmp : list_t;
begin
   new(tmp);
   tmp^.value := v;
   tmp^.next := a;
   a := tmp;
end;

procedure insert3(var a : list_t; v : integer);
var
   tmp : list_t;
begin
   new(tmp);
   tmp^.value := v;
   if a = nil then begin
      a := tmp
   end else if a^.next = nil then begin
      a^.next := tmp
   end else begin
      tmp^.next := a^.next^.next;
      a^.next^.next := tmp;
   end;
end;

procedure delete_paros(var x : list_t);
var
  a, tmp : list_t;
begin
   a:=x;

if a<>nil then
 begin

   while a^.next<>nil do
    begin
       if (a^.next^.value mod 2) <> 0 then
        begin
          a:=a^.next;
        end
       else
       begin
        tmp:=a^.next^.next;
        dispose(a^.next);
        //new(a^.next);
        a^.next:=tmp;
        end;


     if (x^.value mod 2)=0 then
      begin
      tmp:=x^.next;
      dispose(x);
      x:=tmp;
      end;
   end;

 end;


end;
var
   l1:list_t;
begin
  insert3(l1,1);
  insert3(l1,2);
  insert3(l1,3);
  insert3(l1,4);
  insert3(l1,5);
  insert3(l1,6);
  insert3(l1,7);
  writelist(l1);
  writeln('--------------------------');

  delete_paros(l1);
  writelist(l1);

   // readln;
end.
