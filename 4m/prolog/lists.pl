% -*- mode: prolog; -*-

eleme(E,[E|_]).
eleme(E,[_|T]) :- eleme(E,T).

eleme2(E1,E2,L) :- eleme(E1,L), eleme(E2,L).

reszh([],_).
reszh([H|T],L) :- eleme(H,L),reszh(T,L).

a2b([],[]).
a2b([a|Ta],[b|Tb]) :- a2b(Ta,Tb).
