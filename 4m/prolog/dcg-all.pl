% -*- mode: prolog; -*-
s(s(NP,VP))        -->  np(NP,N,subj),vp(VP,N).
np(np(X),pl,_)     -->  n(X,pl).
np(np(D,X),N,_)    -->  det(D,N),n(X,N).
np(np(P),N,SO)     --> pro(P,N,SO).  
vp(vp(V,NP),N)     -->  v(V,N),np(NP,_,obj).
vp(vp(V),N)        -->  v(V,N).

pro(pro(W),N,SO)      -->  [W],{lex(W,pro,N,SO)}.
det(det(W),N)  -->  [W],{lex(W,det,N)}.
n(n(W),N)      -->  [W],{lex(W,n,N)}.
v(v(W),N)      -->  [W],{lex(W,v,N)}.

lex(him,pro,sg,obj).
lex(her,pro,sg,obj).
lex(he, pro,sg,subj).
lex(she,pro,sg,subj).

lex(the,det,_).
lex(a,  det,sg).

lex(woman, n,sg).
lex(man,   n,sg).
lex(men,   n,pl).
lex(women, n,pl).
lex(apple, n,sg).
lex(pear,  n,sg).
lex(apples,n,pl).
lex(pears, n,pl).

lex(eats, v,sg).
lex(eat,  v,pl). 
lex(knows,v,sg).
lex(know, v,pl).
