% -*- mode: prolog; -*-
s  -->  np(X),vp(X).
np(pl) -->  n(pl).
np(X)  -->  det(X),n(X).
vp(X)  -->  v(X),np(_).
vp(X)  -->  v(X).
det(_)  -->  [the].
det(sg) -->  [a].
n(N)  -->  [Word],{lex(Word,n,N)}.
v(N)  -->  [Word],{lex(Word,v,N)}.


lex(woman,n,sg).
lex(man,n,sg).
lex(men,n,pl).
lex(women,n,pl).
lex(apple,n,sg).
lex(pear,n,sg).
lex(apples,n,pl).
lex(pears,n,sg).
lex(eats,v,sg).
lex(eat,v,pl). 
lex(knows,v,sg).
lex(know,v,pl).
