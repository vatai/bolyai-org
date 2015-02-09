% -*- mode: prolog; -*-

% 1. feladat
% papíron: '-->' szabályból prolog ':-' szabályt (vagy vissza)
% sima atom, plusz argumentum, {}, []

% feladat
s(X) --> valami(X),valamias.
s --> [mas],valami,{p(X)}.

% megoldás
%s(X,A,C) :- valami(X,A,B),valamimas(B,C).
%s([mas|A],B) :- valami(A,B),p(X).

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
