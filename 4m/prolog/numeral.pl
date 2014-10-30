% -*- mode: prolog; -*-
numeral(0).
numeral(succ(X))  :-  numeral(X). 

gt(succ(X),0) :- numeral(X).
gt(succ(X),succ(Y)) :- gt(X,Y).
