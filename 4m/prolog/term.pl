% -*- mode: prolog; -*-

complexterm(X):-
    nonvar(X),
    functor(X,_,A),
    A  >  0. 

inc(A,B) :- B is A+1.
:-op(200,xfx,inc).

even(A) :- A mod 2 =:= 0.
:-op(200,xf,even).
