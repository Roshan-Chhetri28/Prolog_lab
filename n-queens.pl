% Bubble Sort Implementation
bubble_sort(List, Sorted) :-
    \+ swap(List, _), % If no swaps can be made, the list is sorted.
    Sorted = List.

bubble_sort(List, Sorted) :-
    swap(List, Swapped), % Perform a swap.
    bubble_sort(Swapped, Sorted).

% Perform one swap where necessary.
swap([X, Y | Rest], [Y, X | Rest]) :-
    X > Y. % Swap if the first element is greater than the second.
swap([Z | Rest], [Z | SwappedRest]) :-
    swap(Rest, SwappedRest). % Recurse through the list.
