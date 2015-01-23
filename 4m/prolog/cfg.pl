% -*- mode: prolog; -*-

s(Z):- append(X,Y,Z), np(X),  vp(Y). % s -> np, vp

np(Z):- append(X,Y,Z), det(X),  n(Y). % np -> det, n

vp(Z):- append(X,Y,Z), v(X),  np(Y). % vp -> v, np
vp(Z):- v(Z).  % vp -> v

det([the]).
det([a]).

n([woman]).
n([man]).

v([shoots]). 
