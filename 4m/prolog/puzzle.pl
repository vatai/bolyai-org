% -*- mode: prolog; -*-
word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e). 

crossword(V1,V2,V3,H1,H2,H3) :- 
    word(V1,_, X1, _, X2, _, X3, _),
    word(V2,_, Y1, _, Y2, _, Y3, _),
    word(V3,_, Z1, _, Z2, _, Z3, _),
    word(H1,_, X1, _, Y1, _, Z1, _),
    word(H2,_, X2, _, Y2, _, Z2, _),
    word(H3,_, X3, _, Y3, _, Z3, _),
    V1\=H1.
