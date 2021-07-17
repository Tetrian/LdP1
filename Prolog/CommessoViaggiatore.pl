%fatti
coll1(na,ro,220).
coll1(ro, fi,200).
coll1(fi,bo,100).
coll1(na,sa,60).
coll1(sa,roma,280).
coll(X,Y,C) :-coll1(X,Y,C).
coll(X,Y,C) :-coll1(Y,X,C).

%caso base
collegamento(Ci,Cf,Lp,[Ci,Cf],C):-
    coll(Ci,Cf,C),
    not(member(Ci,Lp)),
	not(member(Cf,Lp)).

%ricorsione
collegamento(Ci,Cf,Lp,[Ci|L1c],C):-
    coll(Ci,Cint,C1),
    not(member(Ci,Lp)),
    not(member(Cint,Lp)),
    collegamento(Cint,Cf,[Ci|Lp],L1c,C2),
    C is C1 + C2.