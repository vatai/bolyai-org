% -*- mode: prolog; -*-

/* 
HF 

S -> []
S -> [a S b] 

MO: lásd LPN

*/

s  -->  np(subject),vp.
   
np(_)  -->  det,n.
np(X)  -->  pro(X).
   
vp  -->  v,np(object).
vp  -->  v.
   
det  -->  [the].
det  -->  [a].
   
n  -->  [woman].
n  -->  [man].
   
pro(subject)  -->  [he].
pro(subject)  -->  [she].
pro(object)  -->  [him].
pro(object)  -->  [her].
   
v  -->  [shoots]. 
