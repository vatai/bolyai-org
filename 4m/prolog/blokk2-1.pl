% -*- mode: prolog; -*-

doubled(L) :- append(F,F,L).

pali(L) :- reverse(L,R), R=L.

toptail(IN,OUT) :- append([_|OUT],[_],IN).

lastrv(L,X) :- reverse(L,[X|_]).

lastrc([X],X).
lastrc([_|T],X) :- lastrc(T,X).

swapfl([H|T],[L|R]) :- reverse(T,[L|RM]), reverse([H|RM],R).

% swapfl([H|T], [L|R]) :- append(M,[H],R), append(M,[L],T).
