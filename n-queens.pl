:- use_module(library(clpfd)).

% Main predicate to solve the N-Queens problem.
n_queens(N, Solution) :-
   length(Solution, N),             % Create a list of size N.
   Solution ins 1..N,
   all_different(Solution),
   safe_queen(Solution),
   labeling([],Solution).

safe_queen([]).

safe_queen([Queen|Others]):-
    safe_from(Queen, Others, 1),
    safe_queen(Others).

safe_from(_, [], _).
safe_from(Queen, [Other|Others], Distance):-
    abs(Other-Queen)#\=Distance,
    Next_distance #=Distance+1,
    safe_from(Queen, Others, Next_distance).
