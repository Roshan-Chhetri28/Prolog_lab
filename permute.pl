permute([], []).
permute(List, [Head|Tail]):-
    select(Head, List, Rest),
    permute(Rest, Tail).
