(*
  Scrivere in ML una funzione che dato un albero binario A
  e dato un intero N, restituisce l’etichetta del nodo che
  si raggiunge in N passi visitando l’albero in preordine.
*)

(* definizione albero binazio *)
datatype albero = vuoto | nodo of int * albero * albero;

fun 
