
/* ~#~#~#~#~#~#~#~#~#~#~ DATABASE DI UNA FAMIGLIA BIBLICA ~#~#~#~#~#~#~#~#~#~#~

/* *************************************************************************** */

% fatti

father(terach, abraham).
father(terach, nachor).
father(terach, haran).
father(abraham, isaac).
father(haran, lot).
father(haran, milcah).
father(haran, yiscah).

mother(sarah, isaac).

male(terach).
male(abraham).
male(nachor).
male(haran).
male(isaac).
male(lot).

female(milcah).
female(yiscah).

/* *************************************************************************** */

% regole

parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

daughter(X, Y) :- parent(Y, X), female(X).
son(X, Y) :- parent(Y, X), male(X).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

mother(Mom) :- mother(Mom, _).
father(Dad) :- father(Dad, _).

/* *************************************************************************** */

% regola ricorsiva

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

/* *************************************************************************** */
