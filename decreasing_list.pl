print(1):-
    write(1).
print(X):-
    write(X),
    nl,
    Y is X-1,
    print(Y).
