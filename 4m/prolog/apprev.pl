% -*- mode: prolog; -*-

cncat([],L,L).
cncat([H|T],L,[H|R]) :- cncat(T,L,R).

pfx(P,L) :- cncat(P,_,L).
sfx(S,L) :- cncat(_,S,L).
% ifx


naivrev([],[]).
naivrev([H|T],R):-naivrev(T,TR),cncat(TR,[H],R).

% reverse([a,b,c],X).
% X = [c,b,a].
accrev([H|T],A,R) :- accrev(T,[H|A],R).
accrev([],A,A).
rev(L,R) :- accrev(L,[],R).
