% -*- mode: prolog -*-


% 1/2. családfa
% male(a).
% female(b).
% male(c).
% parent(a,b).
% parent(a,c).
% 
% feladat: sister(X,Y) :- X nővére Y-nek.
% megoldás: sister(X,Y) :- parent(T,X), parent(T,Y), female(X). 
% feladat: milyen lekérdezéssel tudjuk meghatároni 'a' összes nővérét?
% megoldás: sister(a,X).

% 2. rekurzió
% matroska babák, vagy szúnyog, béka, gólya (ld. learn prolog now).
% 

% 3. lista generallas. ?????

geneven([],_,0).
geneven([H|T],H,N) :- X is N-1, Y is H+2, geneven(T,Y,X).

% 4. mint a "hossz" list + rekurzió -> szám (ld LPN).

h([],0).
h([_|T],N) :- h(T,X), N is X+1.

s([],0).
s([H|T], S) :- s(T,R), S is R+H.

% 5. ugyan ez akumulátorral.

%
%
