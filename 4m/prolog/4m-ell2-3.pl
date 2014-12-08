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

% 3. rekurzió
% matroska babák, vagy szúnyog, béka, gólya (ld. learn prolog now).
% valami innen: http://www.learnprolognow.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse11

% 4. numeral
% 

% 5. 'go/travel' feladat

% Lista + is

% 1. Feladat twice/2 megírása: http://www.learnprolognow.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse16
% Megoldás: https://github.com/vatai/bolyai-org/blob/master/4m/prolog/listex.pl


% 2. mint a "hossz" list + rekurzió -> szám (ld LPN).
h([],0).
h([_|T],N) :- h(T,X), N is X+1.

% szumma
s([],0).
s([H|T], S) :- s(T,R), S is R+H.

% 3. ugyan ez akumulátorral.
accLen([_|T],A,L)  :-    Anew  is  A+1,  accLen(T,Anew,L).
accLen([],A,A). 
accLen(L,N) :- accLen(L,0,N).

accsum([H|T],A,S) :- Anew is A + H, accsum(T,Anew,S).
accsum([],A,A).
accsum(L,S) :- accsum(L,0,S).

% 
%


% 2.???
geneven([],_,0).
geneven([H|T],H,N) :- X is N-1, Y is H+2, geneven(T,Y,X).
