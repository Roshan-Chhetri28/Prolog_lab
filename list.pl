member(X, [X|_]).
member(X, [_|Tail]):-
    member(X, Tail).

len([], 0).
len([_|T], L):-
    len(T, L1),
    L is L1+1.

sum([], 0).
sum([H|T], Sum):-
    sum(T, S1),
    Sum is S1+H.
sort2([]).
sort2([_]).
sort2([H|[H1|T]], C):-
    H=<H1,
    sort(T, C1).

concat([], L2, L2).
concat([H|T], L2, [H|L3]):-
    concat(T, L2, L3).
