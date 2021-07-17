% Caso base (numero di dischi, piolo iniziale, piolo di appoggio, piolo finale)
hanoi(1,Sinistra,_Centro,Destra):-
    write("Muovi il disco in cima alla pila da "),	% clausole di stampa
    write(Sinistra), 								% per rendere 
    write(" a "), 									% visibili
    write(Destra), 									% i movimenti
    nl.

%caso ricorsivo
hanoi(N,Sinistra,Centro,Destra):-
N > 1,
M is N-1,
hanoi(M,Sinistra,Destra,Centro),
hanoi(1,Sinistra,Centro,Destra),
hanoi(M,Centro,Sinistra,Destra).