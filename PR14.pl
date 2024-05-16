% Base case: the first element of a list is at position 1
nth_element(1, [X|_], X).

% Recursive case: the Nth element of a list with head H and tail T
% is the (N-1)th element of T
nth_element(N, [_|T], X) :-
    N > 1,
    N1 is N - 1,
    nth_element(N1, T, X).

% Test the program
:- initialization(main).
main :-
    write('Enter a list: '),
    read(L),
    write('Enter a position: '),
    read(N),
    (   nth_element(N, L, X)
    ->  write('The element at position '), write(N), write(' is: '), writeln(X)
    ;   writeln('The position is out of range.')
    ).