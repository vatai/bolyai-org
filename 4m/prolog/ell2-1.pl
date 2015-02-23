% -*- mode: prolog; -*-

% 1. feladat
% papíron: '-->' szabályból prolog ':-' szabályt (vagy vissza)
% sima atom, plusz argumentum, {}, []

% feladat
s(X) --> valami(X),valamimas.
s --> [mas],valami,{p(X)}.
s --> valami,[mas].

% megoldás
%s(X,A,C) :- valami(X,A,B),valamimas(B,C).
%s([mas|A],B) :- valami(A,B),p(X).
%s(A,B) :- valami(A,[mas|B]).

aabb --> aa,bb.
aa --> [a].
bb --> [b].
aabb(A,C) :- aa(A,B),bb(B,C).


% 2. feladat
% egyszerű nyelv, s --> np,vp stb.
% pl adottak a következő szavak:
% a(z), férfi, nő, programozik, ügyes, okos

% 3. feladat
% gramatika argumentumokkal
% mint az előző + prolog, prologot, férfit, nőt.
% + feladat: többesszám, vagy lex használata.

% 4. cfg nyelv, a^nb^n

% 5. nem cfg nyelvek a^n b^n c^n

% 6. parser tree (ld LPN) azaz bejárási fa.


% Konkret pelda 2. es 3. feladatra.  

% Mindegyik C program egy main fuggvenybol all, a main fuggveny
% belsejeben utasitasok szerepelnek. az utolso utasitas egy return 0.
% Utasitas lehet deklaracio, ertekadas. Valtozo nevek lehetnek 'x',
% 'y' es 'z'.  Ertekek lehetnek valtozok vagy az 1, 2, 3 szamok. A
% tipus lehet int, char vagy float.
%
% cprogi --> ['int main(){', utasitasok, 'return 0; }']
% utasitasok --> utasitas.
% utasitasok --> utasitas,utasitasok.
% utasitas --> deklaracio.
% utasitas --> ertekadas.
% deklaracio --> tipus, valtozonev,[';'].
% ertekadas --> valtozonev, ['='], ertek,[';'].
% tipus --> [int].
% tipus --> [char].
% tipus --> [float].
% valtozonev --> [x].
% valtozonev --> [y].
% valtozonev --> [z].
% ertek --> valtozonev.
% ertek --> szam.
% szam --> ['1'].
% szam --> ['2'].
% szam --> ['3'].

%int main(){
%	int x;
%	x = 5;
%	return 0;
%}
