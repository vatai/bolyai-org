
% -*- mode: prolog -*-
parent('Imre','István').
parent('Imre','Gizella').
parent('István','Géza').
parent('István','Sarolta').
parent('Gizella','Civakodó Henrik').
parent('Gizella','Burgundi Gizella').

grandparent(Child, GrandParent) :-
    parent(Child, Parent),
    parent(Parent, GrandParent).
