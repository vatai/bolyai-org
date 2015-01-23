% -*- mode: prolog; -*-

s  -->  simple_s.
s  -->  simple_s,conj,s. 

   
conj  -->  [and].
conj  -->  [or].
conj  -->  [but]. 

%%%%%%%%

simple_s  -->  np,vp.
   
np  -->  det,n.
   
vp  -->  v,np.
vp  -->  v.
   
det  -->  [the].
det  -->  [a].
   
n  -->  [woman].
n  -->  [man].
   
v  -->  [shoots]. 
