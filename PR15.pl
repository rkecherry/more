% Base case: the maximum of a list with one element is that element
maxlist([M], M).

% Recursive case: the maximum of a list with head H and tail T
% is either H or the maximum of T, whichever is greater
maxlist([H|T], M) :-
    maxlist(T, MT),
    M is max(H, MT).

% Test the program
:- initialization(main).
main :-
    write('Enter a list: '),
    read(L),
    (   maxlist(L, M)
    ->  write('The maximum number in the list is: '), writeln(M)
    ;   writeln('The list is empty.')
    ).