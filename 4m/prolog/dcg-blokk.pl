% -*- mode: prolog; -*-

s --> [].
s --> l,s,r.

l --> [a].
r --> [b].


fr --> szn.
fr --> ne,fn.
fr --> ne,je,fn.
fr --> je,szn.
szn --> ['Vrábel'].
szn --> ['Utasi'].
ne --> ['a(z)'].
ne --> ['egy'].
fn --> ['ellenőrző'].
je --> ['szép'].
je --> ['ügyes'].
je --> ['okos'].


s1 --> [].
s1 --> aa,s1.
aa --> [a,a].
% s1 --> l,s1,r.
% l --> [a].
% r --> [a].
%%%%%
% s1 --> x,s1,x.
% x --> [a].
%%%%
% s1 --> s1,x,x.
% x --> [a].


% a^n b^2m c^2m d^n nyelv
% hasonlo lehet az ellenorzon.

% szinten lehet az ellenorzon, hogy irjuk meg ezeket klasszikus prolog
% predikatumokkal.

s22 --> s2. % Ezt kell meghivni
s22 --> [a],s22,[d].

s2 --> [].
s2 --> [b,b],s2,[c,c].



prop  -->  [p].
prop  -->  [q].
prop  -->  [r].
prop  --> unaryop, prop.
prop --> ['('],prop, binaryop, prop,[')'].
unaryop --> [nem].
binaryop --> [es].
binaryop --> [vagy].
binaryop --> [akkor].
binaryop --> [aecsa].

