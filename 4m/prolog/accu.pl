% -*- mode: prolog -*-

hossz([],0).
hossz([_|T],N) :- hossz(T,X), N is X+1.

accLen([_|T],A,L)  :-    Anew  is  A+1,  accLen(T,Anew,L).
accLen([],A,A). 

accLen(L,N) :- accLen(L,0,N).
