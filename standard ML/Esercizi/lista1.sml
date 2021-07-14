(*
  Scrivere in ML le seguenti funzioni su liste:
    La funzione length restituisce la lunghezza di una stringa
    La funzione null restituisce true se la stringa è vuota
    Le funzioni hd e tl restituiscono il primo elemento e il resto della lista, rispettivamente
    List.nth(L, i) restituisce l’ i-esimo elemento di L (partendo da 0)
	  List.last(L) restituisce l’ultimo elemento di L
*)

(* ************************************************************************** *)

(* definizione lista *)
datatype listaInt = vuota | nodo of int * listaInt;
val L = nodo(1, nodo(2, nodo(3, nodo(4, vuota))));

(* ************************************************************************** *)

(* stampa la lunghezza della lista *)
fun lung(vuota) = 0
  | lung(nodo(_,resto)) = lung(resto) + 1;

(* ************************************************************************** *)

(* restituisce true se la lista è vuota *)
fun null(vuota) = true
  | null(nodo(_,_)) = false;

(* ************************************************************************** *)

(* restituisce il primo elemento della lista *)
fun testa(nodo(x, _)) = x;

(* restituisce il resto della lista *)
fun resto(nodo(_,x)) = x;

(* ************************************************************************** *)

(* restituisce l'i-esimo elemento della lista *)
fun trova(x, 0) = testa(x)
  | trova(nodo(_, resto), n) = trova(resto, n-1);

(* ************************************************************************** *)

(* restituisce l'ultimo elemento della lista *)
fun coda(nodo(x, vuota)) = x
  | coda(nodo(_, resto)) = coda(resto);

(* ************************************************************************** *)

(* TEST *)

lung L;

null L;
null (vuota);

testa L;
resto L;

trova(L, 0);
trova(L, 3);

coda L;

(* ************************************************************************** *)
