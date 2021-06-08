
/* *************************************************************************** */

/* possibile pattern generate and test */
next_move(Player, Move) :-
	possible_move(Player, Move), optimal(Player, Move).

/* *************************************************************************** */

/* Descrizione del gioco */

% rappresentazione scacchiera
start([[1, 2, 3], [4, 5, 6], [7, 8, 9]]).

adversary(x, o).
adversary(o, x).

% il Player vince se occupa le seguenti posizioni
win(P, [[P, P, P], _, _]).
win(P, [_,[P, P, P], _]).
win(P, [_, _, [P, P, P]]).
win(P, [[P, _, _], [P, _, _], [P, _, _]]).
win(P, [[_, P, _], [_, P, _], [_, P, _]]).
win(P, [[_, _, P], [_, _, P], [_, _, P]]).
win(P, [[P, _, _], [_, P, _], [_, _, P]]).
win(P, [[_, _, P], [_, P, _], [P, _, _]]).

% stato in cui il gioco non termina
non_final(Board) :-
	\+ win(_, Board),
	member(Row, Board),
	member(Cell, Row),
	number(Cell).

% stato in cui il gioco termin
final(Board) :-
	\+ non_final(Board).

/* *************************************************************************** */

/* Possibili mosse e loro effetto
    P (player) è il simbolo del giocatore che fa la mossa (‘x’ oppure ‘o’ )
    N la mossa, indicata dal numero della cella ( 1 ≤ N ≤ 9 )
    Board1 è l’attuale scacchiera
    Board2 è la scacchiera dopo la mossa
*/
move(P, N, Board1, Board2) :-
	\+ win(_, Board1),
	append(RowsBefore, [Row|RowsAfter], Board1),
	append(CellsBefore, [N|CellsAfter], Row),
	number(N),
	append(CellsBefore, [P|CellsAfter], NewRow),
	append(RowsBefore, [NewRow|RowsAfter], Board2).

/* *************************************************************************** */

/* Le strategie
    P (player) è il simbolo ‘x’ oppure ‘o’
    Move è la prima mossa della strategia
    Board è l’attuale scacchiera
*/
has_win_strat(P, _, Board) :-
	win(P, Board).
has_win_strat(P, Move, Board) :-
	move(P, Move, Board, Board2),
	adversary(P, Adv),
	\+ has_tie_strat(Adv, _, Board2).

has_tie_strat(_, _, Board) :-
	final(Board),
	\+ win(_, Board).
has_tie_strat(P, Move, Board) :-
	move(P, Move, Board, Board2),
	adversary(P, Adv),
	\+ has_win_strat(Adv, _, Board2).

/* *************************************************************************** */

/* Interfaccia utente testuale */

print_board([]).
print_board([Row|Rest]) :-
	format(’~a|~a|~a \n’, Row),
	print_board(Rest).

read_move(Player, Move) :-
	format(’\nPlayer ~a insert your move [1-9]: ’, [Player]),
	get_single_char(Char), put_char(Char), nl,
	Move is Char-48, % sottrae il codice ascii dello 0
	Move >= 1, Move =< 9.

/* *************************************************************************** */

/* I turni  */

turn(_, _, Board) :-
	final(Board),
	\+ win(_, Board),
	format(’\nThe game ends in a tie. \n’).

turn(P, _, Board) :-
	win(_, Board),
	member(Adv, [user, cpu]), Adv \= P,
	format(’\nThe ~a wins! \n’, [Adv]).

turn(user, P, Board):-
	read_move(P, M),
	move(P, M, Board, Board2),
	print_board(Board2),
	adversary(P, Adv),
	turn(cpu, Adv, Board2).

turn(cpu, P, Board) :-
	(has_win_strat(P, Move, Board); has_tie_strat(P, Move, Board)),
	format(’\ncpu move: ~a \n’, [Move]),
	move(P, Move, Board, Board2),
	print_board(Board2),
	adversary(P, Adv),
	turn(user, Adv, Board2).

/* *************************************************************************** */

/* Main */

% Specifica tramite query chi inizia e con che simbolo
go(First, Symbol) :-
	member(First, [user, cpu]),    % Esempio di invocazione
	start(Board),                  % ?- go(user, x).
	turn(First, Symbol, Board).

 % Estrazione a sorte di chi inizia
 main : -
	Choice is random(2),
	nth0(Choice, [(user, o), (cpu, x)], (First, Symbol)),
	format(’\nThe ~a starts \n’, [First]),
	start(Board),
	turn(First, Symbol, Board),
	halt.

/* *************************************************************************** */
