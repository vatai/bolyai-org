% -*- mode: prolog; -*-


loves(vincent, mia).
% 7 loves 8 + 9   
% == (7 loves 8) + 9 vagz
% == 7 loves (8 + 9)

hates(butch,vincent).

:- op(500,xfx,hates).


% 3 + 100 mod 17 == 3 + (100 mod 17)


flys(plane).
flys(bird).
flys(superman).

:-op(500,xf,flys).

% Tehát, az op(Prec,Fix,Op)-ban, 
% - Prec a precedencia és <=1200 és 0<= és minnél kisebb 
%   annál 'erősebb' a művelet (pl *-nak 400, +-nak 500).
% - FIX az fx, fy ha prefix, xf, yf, ha szufix 
% - és xfx, yfx, xfy ha infix ahol 
% -- az x azt jelenti hogy az argumentum precedenciája <
% -- az y azt jelenti hogy az argumentum precedenciája <=

% például 1+2+3 == (1+2)+3 mert op(500,yfx,+) tehát
% a bal argumentum precedenciája <= (az y miatt) és
% a jobb argumentum precedenciája < (az x miatt).
% a bal argumentum +(1,2) a jobb argumentum egy konstans 3
% és a konstansok (és zárojelek) precedenciája 0.
%

is_a(hermione, witch).

:-  op(300,  xfx,  [are,  is_a]).
:-  op(300,  fx,  likes).
:-  op(200,  xfy,  and).
:-  op(100,  fy,  famous). 

% harry  and  ron  and  hermione  are  friends 
% == are(and(harry,and(ron,hermione)),friends). 
