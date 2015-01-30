% -*- mode: prolog; -*-

s(Count)  -->  ablock(Count),bblock(Count),cblock(Count).
   
ablock(0)  -->  [].
ablock(succ(Count))  -->  [a],ablock(Count).
   
bblock(0)  -->  [].
bblock(succ(Count))  -->  [b],bblock(Count).
   
cblock(0)  -->  [].
cblock(succ(Count))  -->  [c],cblock(Count). 


