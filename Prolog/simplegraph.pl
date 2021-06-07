
/* ~#~#~#~#~#~#~#~#~#~#~#~#~ DESCRIZIONE DI UN GRAFO ~#~#~#~#~#~#~#~#~#~#~#~#~ */

%         a
%       /   \
%      b     c      f                       orientamento
%       \  /        !                          verso
%        d          g                        il basso
%        |
%        a

/* *************************************************************************** */

% fatti che rappresentano il grafo
arco(a, b).
arco(b, d).
arco(d, e).
arco(a, c).
arco(c, d).
arco(f, g).

% /* verificare se due nodi sono connessi */
connessi(X, X).
connessi(X, Y) :- arco(X, Z), connessi(Z, Y).

/* *************************************************************************** */
