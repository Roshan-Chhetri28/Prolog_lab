% Bubble Sort Implementation
bubble_sort(List, Sorted):-
    \+ swap(List, Sorted),
    Sorted = List.

bubble_sort(List, Sorted):-
    swap(List, Swapped),
    bubble_sort(Swapped, Sorted).
swap([X, Y|Rest], [Y, X|Rest]):-
    X>Y.
swap([Z|Rest], [Z|Rest1]):-
    swap(Rest, Rest1).
