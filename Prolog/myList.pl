
/* *************************************************************************** */

/* Ricerca di un elemento X in una listq L */

% Caso base: per ogni X, X è membro di qualunque lista se compare come primo elemento.
member(X, [X| _]).
%Caso ricorsivo: X è membro di una lista se X è membro di tutto quello che viene dopo il primo elemento.
member(X, [_| L]) :- member(X, L).

/* *************************************************************************** */

/* Predicato Append */

% Concatenzaione di due liste
append([], L, L).
append([X,Tail], L, [X|RisParz]) :- append(Tail, L, RisParz).

% Generazione di tutti i prefissi/suffissi di una lista
prefix(Prefix, List) :- append(Prefix, _, List).
suffix(Suffix, List) :- append(_, Suffix, List).

% % Definizione alternativa di member attraverso append
% member(X, L) :- append(_, [X|_], L).

% Calcolo di una sottolista (intersezione tra prefisso e suffisso) di L
sublist ( Sub , L ) : - prefix ( Pre , List ) , suffix ( Sub , Pre ).

/* *************************************************************************** */

/* Ricerca di un membro pari della lista */

% stile generate and test
membro_pari(X, L) :- member(X, L), 0 is X mod 2.

% % invece di ricorsione ad hoc
% membro_pari(X, [X|_]) :- 0 is X mod 2.
% membro_pari(X, [_|Resto]) :- membro_pari(X, Resto).

/* *************************************************************************** */
