% -*- mode: prolog; -*-

f(a,b).
f(b,c).
f(c,d).
f(d,e).

% Minden OK!
r1(X,Y) :- f(X,Y).
r1(X,Y) :- f(X,T),r1(T,Y).

% Minden OK!
r2(X,Y) :- f(X,T),r2(T,Y).
r2(X,Y) :- f(X,Y).

% Nincs válasz, és elszáll!
r3(X,Y) :- r3(T,Y),f(X,T).
r3(X,Y) :- f(X,Y).

% Vannak válaszok, de el is száll!
r4(X,Y) :- f(X,Y).
r4(X,Y) :- r4(T,Y),f(X,T).
