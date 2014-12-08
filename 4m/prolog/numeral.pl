% -*- mode: prolog; -*-
numeral(0).
numeral(succ(X))  :-  numeral(X). 

% numeral: 0, succ(0), succ(succ(0)), ...


% gt = greater_than
% 5 > 3 azaz gt(succ(succ(succ(succ(succ(0))))),succ(succ(succ(0)))
gt(succ(X),0) :- numeral(X).      % X+1 > 0 ha X természetes szám
gt(succ(X),succ(Y)) :- gt(X,Y).   % X+1 > Y+1 ha X>Y

