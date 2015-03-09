% -*- mode: prolog; -*-

complexterm(X):-
    nonvar(X),
    functor(X,_,A),
    A  >  0. 

simpleterm(X):-
    functor(X,_,0).

inc(A,B) :- B is A+1.
:-op(200,xfx,inc).

even(A) :- A mod 2 =:= 0.
:-op(200,xf,even).

typeterm(Term,atom) :- atom(Term).
typeterm(Term,integer) :- integer(Term).
typeterm(Term,float) :- float(Term).
typeterm(Term,number) :- number(Term).
typeterm(Term,constant) :- atomic(Term).
typeterm(Term,var) :- var(Term).
typeterm(Term,simpleterm) :- simpleterm(Term).
typeterm(Term,complexterm) :- complexterm(Term).
typeterm(Term,nonvar) :- nonvar(Term).
typeterm(_,term).



% .(H,T) = [H|T] = [H,T1,T2...]
% .(.(a,[]),.(.(b,[]),.(.(c,[]),[])))  =  X. 
% [[a],[b],[c]]
