% -*- mode: prolog -*-

second(X,[_,X|_]).

swap12([X,Y|T],[Y,X|T]).

tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine). 

listtran([],[]).
listtran([H1|T1],[H2|T2]) :- tran(H1,H2), listtran(T1,T2).

twice([],[]).
twice([H1|T1],[H1,H1|T2]) :- twice(T1,T2).
