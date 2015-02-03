% -*- mode: prolog; -*-
s  -->  foo,bar,wiggle.
foo  -->  [choo].
foo  -->  foo,foo.
bar  -->  mar,zar.
mar  -->  me,my.
me  -->  [i].
my  -->  [am].
zar  -->  blar,car.
blar  -->  [a].
car  -->  [train].
wiggle  -->  [toot].
wiggle  -->  wiggle,wiggle. 

s1 --> [a,b].
s1 --> [a],s1,[b].

s2 --> [].
s2 --> [a],s2,[b,b].

s3  -->  np(X),vp(X).
np(pl) -->  n(pl).
np(X)  -->  det(X),n(X).
vp(X)  -->  v(X),np(_).
vp(X)  -->  v(X).
det(_)  -->  [the].
det(sg) -->  [a].
n(sg)  -->  [woman].
n(sg)  -->  [man].
n(pl)  -->  [men].
n(pl)  -->  [women].
n(sg)  -->  [apple].
n(sg)  -->  [pear].
n(pl)  -->  [apples].
n(pl)  -->  [pears].
v(sg)  -->  [eats].
v(pl)  -->  [eat]. 
v(sg)  -->  [knows].
v(pl)  -->  [know].

kanga(V,R,Q)  -->  roo(V,R),jumps(Q,Q),{marsupial(V,R,Q)}. 

% kanga(A,B,C,D,F)  :- 
%   roo(A,B,D,E), 
%   jumps(C,C,E,F), 
%   marsupial(A,B,C).

kanga1(V,R,Q)  -->  roo(V,R),jumps(Q,Q),hops(V,Q),{marsupial(V,R,Q)}. 

g --> i,j,k.
% g(A,D) :- i(A,B),j(B,C),k(C,D).
g --> [x].
