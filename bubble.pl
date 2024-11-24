n_queens(N, Solution):-
    length(Solution, N),
    queens(Solution, N).


queens([], _).

queens([Head|Tail], N):-
    queens(Tail, N),
    up2n(1, N, Candidate),
    member(Head, Candidate),
    place_queens(Head, Tail, 1).

up2n(Start, End, []):- Start>End.
up2n(Start, End,[Start|Rest]):-
    Start=<End,
    Next is Start+1,
    up2n(Next, End, Rest).

place_queens(_, [], _).

place_queens(Q, [Q1|Qn], Distance):-
    Q=\=Q1,
    abs(Q1-Q)=\=Distance,
    Next is Distance+1,
    place_queens(Q, Qn, Next).
