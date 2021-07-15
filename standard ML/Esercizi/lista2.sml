
(* ************************************************************************** *)

(*
  Scrivere una funzione member che dati una lista L e un intero N,
  restituisce true se e solo se N appartiene ad L.
*)

fun member(nil, n) = false
  | member(L, n) = if hd L = n then true
                  else member(tl L, n);

(* ************************************************************************** *)

(*
  Scrivere una funzione che dati una lista L e un intero N,
  appende N in fondo alla lista;
*)

fun append([], n) = [n]
  | append(L, n) = hd L :: append(tl L, n);

(* ************************************************************************** *)

(* Scrivere una funzione che concatena due lista *)

fun concat(L1, []) = L1
  | concat(L1, L2) = concat(append(L1, hd L2), tl L2);

(* ************************************************************************** *)

(*
  Scrivere una funzione reverse che inverte l’ordine degli elementidi una lista
  (suggerimento: usare un parametro aggiuntivo che serve a
              costruire progressivamente la lista invertita)
*)

fun reverse([]) = []
  | reverse(L) = List.last(L) :: reverse(List.take(L, length L - 1));

(* ************************************************************************** *)

(* TEST *)

member([], 4);
member([1,2,3], 4);
member([1,2,3], 2);

append([], 2);
append([1,2,3], 4);

concat([1,2], []);
concat([], [3,4]);
concat([1,2], [3,4]);

reverse([]);
reverse([1,2,3]);
reverse([1,2,3,4,5,6]);

(* ************************************************************************** *)
