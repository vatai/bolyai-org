% -*- mode: prolog; -*-

p(1).
p(2)  :-  !.
p(3). 

class(Number,positive)  :-  Number  >  0, !.
class(Number,negative)  :-  Number  <  0, !. 
class(0,zero).

split([],[],[]) :- !.
split([H|T],[H|P],N) :- H >= 0, split(T,P,N), !.
split([H|T],P,[H|N]) :- split(T,P,N).

loves(vincent,mia).
loves(marsellus,mia).
loves(pumpkin,honey_bunny).
loves(honey_bunny,pumpkin). 
%% neg(Goal) :- Goal,!,fail.
%% neg(Goal).
%% jealous(X,Y):-  loves(X,Z),  loves(Y,Z), neg( X=Y).
%% vagy
jealous(X,Y):-  loves(X,Z),  loves(Y,Z), \+ X=Y.

directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz). 

train(X,Y) :- directTrain(X,Y),!.
train(X,Y) :- directTrain(Y,X).

route(X,Y,[X,Y]) :- train(X,Y).
route(X,Z,[X|T]) :- train(X,Y),route(Y,Z,T).

