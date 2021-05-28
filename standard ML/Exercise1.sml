(*
  Scrivere in ML una funzione che dato un albero binario A
  e dato un intero N, restituisce l’etichetta del nodo che
  si raggiunge in N passi visitando l’albero in preordine.
*)

(* definizione albero binario *)
datatype albero = vuoto | nodo of int * albero * albero;
val A = nodo(1, nodo(2, nodo(4, vuoto, vuoto), nodo(5, vuoto, vuoto)), nodo(3, vuoto, vuoto));
        (*1*)
    (*2*)   (*3*)
(*4*) (*5*)

(* stampa del nodo N in pre order *)
