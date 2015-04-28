% -*- mode: prolog; ispell-local-dictionary: "hu" -*-

/*
=	The unification predicate.
Succeeds if it can unify its arguments, fails otherwise.
\=	The negation of the unification predicate.
Succeeds if = fails, and vice-versa.
==	The identity predicate.
Succeeds if its arguments are identical, fails otherwise.
\==	The negation of the identity predicate.
Succeeds if == fails, and vice-versa.
=:=	The arithmetic equality predicate.
Succeeds if its arguments evaluate to the same integer.
=\=	The arithmetic inequality predicate.
Succeeds if its arguments evaluate to different integers.

-----

?-  .(a,[])  ==  [a]. 
yes 

?-  .(f(d,e),[])  ==  [f(d,e)]. 
yes 

stb.

-----

atom/1       Is the argument an atom?
integer/1    Is the argument an integer?
float/1	     Is the argument a floating point number?
number/1     Is the argument an integer or a floating point number?
atomic/1     Is the argument a constant?
var/1        Is the argument an uninstantiated variable?
nonvar/1     Is the argument an instantiated variable or another term that is not an un instantiated variable?

-----

?-  functor(f(a,b),F,A). 
A  =  2 
F  =  f 
yes 

?-  functor([a,b,c],X,Y). 
X  =  ’.’ 
Y  =  2 
yes

---

?-  S  =  "Vicky". 
S  =  [86,  105,  99,  107,  121] 
yes

?-  atom_codes(vicky,X). 
X  =  [118,  105,  99,  107,  121] 
yes 

*/

% 1. feladat

/* 
Írd meg a swap1 prolog predikátumot, amely ugyan azt csinálja amit a
swap csak ne használj '[', '[' és '|' (azaz old meg a ./2
predikátummal).
*/

swap([A,_,B],[B,_,A]).

% megoldás

swap1( .(A, .(_, B) ), .(B, .(_, A) )).


% 2. feladat

/*
Írd meg a checkf/1 predikátumot amelyik csak akkor igaz, ha az
argumentumként megadott kifejezés egy összetett kifejezés, melynek
funktorának első betűje 'f' és az aritása páros.
*/

% megoldás

checkf(Exp) :- functor(Exp,Funktor,Arity), % kiolvassuk a funktort és az aritást
	       mod(Arity,2) =:= 0, % az aritás páros
	       atom_codes(Funktor,String), % átalakítjuk sztringbe
	       String = [H|_], [H] = "f".  % String első elemének vizsgálata

% 3. feladat

/*
Írj egy infix faktorial_is/2 operátort, amely kiszámolja a szám
faktoriálisát.  Az operátor precedenciája legyen egyenlő a szorzás
precedenciájával amit a current_op/3 predikátummal tudtok lekérdezni
(első argumentuma a precedencia, második az operátor típus, harmadik
pedig az operátor név).  Nálam azt írja, hogy:

?- current_op(X,T,*).
X = 400,
T = yfx.

*/

fa(0,F,F) :- !.
fa(N,F,A) :- A1 is N*A, 
	     N1 is N-1,
	     fa(N1,F,A1).

factorial_is(N,R) :- fa(N,R,1).

:- op(400,yfx,factorial_is).
/* yfx típusnak deklaráljuk az operátort, mert az első argumentum
 * lehet 'akármi' (azaz lehet egyenlő precedenciájú is, ezért az y az
 * yfx elején), a második argumentum meg okvetlenül az eredmény kell
 * hogy legyen (mivel is/2-t használunk) és ezért itt csak változó
 * vagy konstans szerepelhet, azaz a precedenciája kisebb kell hogy
 * legyen (ezért az x az yfx végén).


% 4. feladat

/* 
Írd meg a checknum/1 predikátumot amely pontosan akkor igaz ha az
egyetlen argumentumként megadott lista tartalmaz legalább egy számot.
Használj vágást hogy optimalizáld a végrehajtást.
*/

% megoldás

checknum([H|_]) :- number(H),!. % <- ez a rekurzió termináló ága
checknum([_|T]) :- checknum(T). % és a vágás miatt nem is próbál mást


% 5. feladat
/* Írj egy kisebb adatbázist, amely azt írja le hogy ki mit szeret
(enjoys/2).  Rögzítsük, hogy vincent szereti a hamburgereket kivéve a
big_kahuna_burgereket.  A burger/1 predikátum akkor igaz ha a az
argumentuma egy hamburger, a big_mac/1, big_kahuna_burger/1, whopper/1
predikátumok pedig akkor igazak, ha az argumentum az adott típusú
hamburger.
*/

% megoldás 

burger(X) :- big_mac(X).
burger(X) :- big_kahuna_burger(X).
burger(X) :- whopper(X).

big_mac(a).
big_kahuna_burger(b).
big_mac(c).
whopper(d).

enjoys(vincent,X) :-
  burger(X),
  \+  big_kahuna_burger(X).


% 6. feladat

/*
Írd meg a split/3 predikátumot, amely az első argumentumként megadott
lista elemeit szétválasztja, úgy hogy a nemnegatív elemek kerülnek az
a második argumentumként megadott listába a negatív elemek pedig a
harmadik argumentumként megadott listába.
*/

split([], [], []).

split([HP | TL], [HP | TP], N) :-
  HP >= 0, !, % green cut
  split(TL, TP, N).

split([HN | TL], P, [HN | TN]) :-
  HN < 0, !, % green cut
  split(TL, P, TN).
