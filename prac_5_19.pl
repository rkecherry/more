:- initialization(main).
% base case
gcd(X, 0, X):- !.

% recursive case
gcd(X, Y, Z):-
    R is X mod Y,
    gcd(Y, R, Z).

% main predicate to read input and compute gcd
main:-
    write('Enter first number: '),
    read(X),
    write('Enter second number: '),
    read(Y),
    gcd(X, Y, GCD),
    write('The GCD of '), write(X), write(' and '), write(Y),
    write(' is: '), write(GCD), nl.
