fibo(0, 0):-!.
fibo(1, 1):-!.
print(X):-
    X>=0,
    printf(0, X).
printf(X, Y):-
    X=<Y,
    fibo(X, F),
    write(F),
    X1 is X+1,
    nl,
    printf(X1, Y).
fibo(X, F):-
    X>0,
    N1 is X-1,
    N2 is X-2,
    fibo(N1, F1),
    fibo(N2, F2),
    F is F2+F1.


