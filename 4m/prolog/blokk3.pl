% -*- mode: prolog -*-

byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).
   
byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland). 

% travel2(X,Y) :- byCar(X,Y). 
% travel2(X,Y) :- byTrain(X,Y).
% travel2(X,Y) :- byPlane(X,Y).

travel(X,Y) :- byCar(X,Y).
travel(X,Y) :- byTrain(X,Y).
travel(X,Y) :- byPlane(X,Y).
travel(X,Y) :- byCar(Y,X).
travel(X,Y) :- byTrain(Y,X).
travel(X,Y) :- byPlane(Y,X).

travel(X,Z) :- byCar(X,Y),travel(Y,Z).
travel(X,Z) :- byTrain(X,Y),travel(Y,Z).
travel(X,Z) :- byPlane(X,Y),travel(Y,Z).
travel(X,Z) :- byCar(Y,X),travel(Y,Z).
travel(X,Z) :- byTrain(Y,X),travel(Y,Z).
travel(X,Z) :- byPlane(Y,X),travel(Y,Z).

travel(X,Y,go(X,Y)) :- byCar(X,Y).
travel(X,Y,go(X,Y)) :- byTrain(X,Y).
travel(X,Y,go(X,Y)) :- byPlane(X,Y).

travel(X,Z,go(X,Y,G)) :- travel(X,Y,go(X,Y)),travel(Y,Z,G).

