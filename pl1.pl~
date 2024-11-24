father(bal_bdr, man_bdr).
father(man_bdr, roshan).
father(man_bdr, rohan).
male(bal_bdr).
male(man_bdr).
male(roshan).
male(rohan).
mother(run_maya, man_bdr).
mother(indra, roshan).
female(run_maya).
female(indra).

grandfather(X, Z):-
    male(X),
    male(Y),
    father(Y, Z),
    father(X, Y).
grandmother(X, Z):-
    female(X),
    father(Y, Z),
    mother(X, Y),
    female(X).
brothers(X, Y):-
    male(X),
    male(Y),
    father(A, X),
    father(A, Y).


