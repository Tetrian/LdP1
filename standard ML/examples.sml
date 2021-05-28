
(* calcolo del fattoriale di un valore *)
fun fatt x = if x = 0 then 1 else x * fatt(x - 1);

(* aggiunta di un nuovo identificatore all'ambiente e associazione di un valore *)
val x = 2 + 2;

(* definizione in blocchi *)
let
  val x = 1
  fun f(y) = x + y
in
  f(0)
end;

(* definizione di costruttori *)
datatype color = red | green | blue;

(* costruzione di una lista *)
datatype listaInt = vuota | nodo of int * listaInt;

(* costruzione di un albero binario con radice 1 e figlio sinistro 2 (foglia) *)
datatype albero = vuoto | nodoAlb of int * albero * albero;
nodoAlb (1, nodoAlb(2,vuoto,vuoto), vuoto);
