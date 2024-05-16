:- initialization(main).

%max predicate
max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- X < Y.

%main predicate
main :-
    write('Enter the first number: '),
    read(X),
    write('Enter the second number: '),
    read(Y),
    max(X, Y, M),
    write('The maximum of '),write(X),
    write(' and '),write(Y),write(' is: '), write(M), nl.
