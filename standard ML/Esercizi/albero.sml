(*
  Scrivere in ML una funzione che dato un albero binario A
  e dato un intero N, restituisce l’etichetta del nodo che
  si raggiunge in N passi visitando l’albero in pre/post.
*)

(* ************************************************************************** *)

(* definizione albero binario *)
datatype albero = vuoto | nodo of int * albero * albero;
val A = nodo(1, nodo(2, nodo(4, vuoto, vuoto), nodo(5, vuoto, vuoto)), nodo(3, vuoto, vuoto));
        (*1*)
    (*2*)   (*3*)
(*4*) (*5*)

(* ************************************************************************** *)

(* FUNZIONI AUSILIARIE *)

(* crea una lista con i nodi dell'albero in pre order *)
fun preorder(vuoto) = []
  | preorder(nodo(x, sx, dx)) = [x] @ (preorder(sx)) @ (preorder(dx));

(* crea una lista con i nodi dell'albero in post order *)
fun postorder(vuoto) = []
  | postorder(nodo(x, sx, dx)) = (postorder(sx)) @ (postorder(dx)) @ [x];

(* restituisce l'i-esimo elemento della lista *)
fun trova(testa::resto, 0) = testa
  | trova(testa::resto, n) = trova(resto, n-1);

(* ************************************************************************** *)

(* stampa del nodo ennesimo in pre order *)
fun trovaPreOrder(alb, n) =  trova(preorder alb, n);

(* ************************************************************************** *)

(* stampa del nodo ennesimo in post order *)
fun trovaPostOrder(alb, n) =  trova(postorder alb, n);

(* ************************************************************************** *)

(* TEST *)

preorder(A);
trovaPreOrder(A, 0);
trovaPreOrder(A, 1);
trovaPreOrder(A, 2);
trovaPreOrder(A, 3);
trovaPreOrder(A, 4);

postorder(A);
trovaPostOrder(A, 0);
trovaPostOrder(A, 1);
trovaPostOrder(A, 2);
trovaPostOrder(A, 3);
trovaPostOrder(A, 4);

(* ************************************************************************** *)
