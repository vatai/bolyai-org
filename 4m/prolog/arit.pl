% -*- mode: prolog -*-

add_3_and_double(X,Y)  :-  Y  is  (X+3)*2. 
avg(X,Y,A) :- A is (X+Y)/2.

hossz([],0).
hossz([_|T],N):- hossz(T,X), N is X+1.

osszeg([],0).
osszeg([H|T],N) :- osszeg(T,X), N is X + H.
