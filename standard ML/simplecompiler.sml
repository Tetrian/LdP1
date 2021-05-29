
(* ************************************************************************** *)

(* Definizione degli alberi sintattici *)

datatype syntree = co of int (* le costanti *)
 |	plus of syntree * syntree
 |	minus of syntree * syntree
 |	times of syntree * syntree
 |	divide of syntree * syntree
 |	modulus of syntree * syntree

(* ************************************************************************** *)

(* Definizione del linguaggio target *)

datatype instruction =
	  LOADC of int * int	(* LOADC i c = > Ri := c *)
 |	LOADI of int * int	(* LOADI i j = > Ri := mem ( Rj ) *)
 |	STOREI of int * int	(* STOREI i j = > mem ( Rj ) := Ri *)
 |	INCR of int			    (* INCR i = > Ri := Ri + 1 *)
 |	DECR of int			    (* DECR i = > Ri := Ri - 1 *)
 |	SUM of int * int	  (* SUM i j = > Ri := Ri + Rj *)
 |	SUB of int * int	  (* SUB i j = > Ri := Ri - Rj *)
 |	MUL of int * int	  (* MUL i j = > Ri := Ri * Rj *)
 |	DIV of int * int	  (* DIV i j = > Ri := Ri / Rj *)
 |	MOD of int * int	  (* MOD i j = > Ri := Ri mod Rj *)
 |	HALT

(* ************************************************************************** *)

(* Generazione del codice *)

fun codegen tree =
let
	(* definizione della funzione translate *)
	(* R1: stack pointer; R2: accumulator *)
	fun translate (co x) cont =
		LOADC (2 , x ) :: INCR (1) :: STOREI (2 ,1) :: cont
	 |	translate (plus(t1,t2)) cont =
			translate t1 (
				translate t2 (
					LOADI(2,1)::DECR(1)::LOADI(3,1)::SUM(2,3)::STOREI(2,1)::
					cont))
	 |	translate (times(t1,t2)) cont = (* simile ma con MUL al posto di SUM *)
	 |	translate (minus(t1,t2)) cont = (* simile ma con SUB(3,2) al posto di SUM(2,3) *)
	 |	translate (divide(t1,t2)) cont = (* simile ma con DIV al posto di SUB *)
	 |	translate (modulus(t1,t2)) cont = (* simile ma con MOD al posto di SUB *)
in
	translate tree [HALT]
end

(* ************************************************************************** *)

(* Ottimizzazione del codice *)

local
	(* definizione singolo passo di ottimizzazione *)
	fun opt1 [] = []
 |	opt1 (INCR(x)::STOREI(y,_)::DECR(x1)::cont) =
		let val cont’ = opt1 cont in
			if x = x1 andalso x<>y then STOREI(y,_)::cont’
			else INCR(x)::STOREI(y,_)::DECR(x1)::cont’
		end
 |	opt1 (STOREI(x,y)::LOADI(x1,y1)::cont) =
		let val cont’ = opt1 cont in
			if x = x1 andalso y = y1 then STOREI(x,y)::cont’
			else STOREI(x,y)::LOADI(x1,y1)::cont’
		end
 |	opt1 (c::cont) = c::(opt1 cont) in fun optimize code =
		let val code’ = opt1 code in       (* fa 1 passo di ottimizzazione *)
			if length(code’) = length(code)  (* se nessun progresso *)
				then code’                     (* termina *)
			else optimize code ’             (* altrimenti riprova *)
		end
end

(* ************************************************************************** *)

(* Combinazione delle fasi *)
val compile = optimize o codegen o parse;

(* ************************************************************************** *)
