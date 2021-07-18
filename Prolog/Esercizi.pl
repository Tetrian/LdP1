
/* *************************************************************************** */

/* ESERCIZIO 1 *//*
  Data la lista [stud(mario,m),stud(maria,f),stud(paolo,m)]
    scrivere una opportuna query a member che restituisce gli studenti maschi
*/

% soluzione:
% ?- member(stud(X,m),[stud(mario,m),stud(maria,f),stud(paolo,m)]).

/* *************************************************************************** */

/* ESERCIZIO 2 *//*
  Usando member, scrivere la regola per una select (algebra relazionale) sulla
  relazione r che seleziona i record il cui secondo elemento appartiene a una
  lista data. Se r ha n colonne, la select ha n+1 argomenti:
                                    select_r_2 ( X1 ,X2 ,...,Xn ,Lista )
*/

% rappresentazione
% di una tabella 4x4
r(a1, b1, c1, d1).
r(a2, b2, c2, d2).
r(a3, b3, c3, d3).
r(a4, b4, c4, d4).

select_r_2(_, X, _, _, Lista) :- r(_, X, _, _), member(X, Lista).

/* *************************************************************************** */

/* ESERCIZIO 3 *//*
  Scrivere un predicato reverse che inverte una lista:
    reverse(Lista, ListaInvertita, Accumulatore)
  Poi usare l'overloading per avere una reverse a due soli argomenti
*/

reverse([], R, R).
reverse([X|Tail], Rev, Acc) :- reverse(Tail, Rev, [X|Acc]).

reverse(Lis, Rev) :- reverse(Lis, Rev, []).

/* *************************************************************************** */

/* ESERCIZIO 4 *//*
  Scrivere un predicato append che concatena due liste.
*/

append([], L, L).
append([X|Tail], L, [X|RisParz]) :- append(Tail, L, RisParz).

/* *************************************************************************** */

/* ESERCIZIO 5 *//*
  Usare l’invertibilità di append per definire un predicato last(L,X)
  che è vero se X è l’ultimo elemento della lista L
*/

last(Lista, X) :- append(_, [X], Lista).

/* *************************************************************************** */

/* ESERCIZIO 6 *//*
  Usando is definire
    un predicato len(L) che conta gli elementi della lista L
    un predicato fatt(N,F) tale che F è il fattoriale di N
    un predicato sum(L,S) tale che S è la somma degli elementi nella lista L
*/

len([], 0).
len([_|Tail], L) :- len(Tail, N), L is N+1.

fatt(0, 1).
fatt(N, F) :- N1 is N-1, fatt(N1, F1), F is F1*N.

sum([X], S) :- S is X.
sum([X|Tail], S) :- sum(Tail, S1), S is S1 + X.

/* *************************************************************************** */
