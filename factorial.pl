main:-
    write("Enter Your Number: "),
    read(X),
    fact(X, Result),
    write(Result).
fact(0, 1):-!.
fact(1, 1):-!.

fact(X, Result):-
    X>1,
    Y is X-1,
    fact(Y, Z),
    Result is X*Z.

