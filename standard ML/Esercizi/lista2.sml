
(* definizione lista *)
datatype listaInt = vuota | nodo of int * listaInt;
val L = nodo(1, nodo(2, nodo(3, vuota)));

(* ************************************************************************** *)
