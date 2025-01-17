:- initialization(main).
%factorial predicate
factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

%main predicate
main :-
    write('Enter a number: '),
    read(N),
    factorial(N, F),
    write('The factorial of '),write(N),
    write(' is: '), write(F), nl.
