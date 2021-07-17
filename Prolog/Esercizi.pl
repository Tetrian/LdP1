
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
