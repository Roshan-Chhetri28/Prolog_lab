numbers(X, Y, Z, Result):-
    X>Y,
    X>=Z,
    Result is X.
numbers(X, Y, Z, Result):-
    Y>=X,
    Y>=Z,
    Result is Y.
numbers(X, Y, Z, Result):-
    Z>Y,
    Z>X,
    Result is Z.
