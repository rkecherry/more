% Base case: the sum of an empty list is 0
sumlist([], 0).

% Recursive case: the sum of a list with head H and tail T
% is H plus the sum of T
sumlist([H|T], S) :-
    sumlist(T, ST),
    S is H + ST.

% Test the program
:- initialization(main).
main :-
    write('Enter a list: '),
    read(L),
    sumlist(L, S),
    write('The sum of the list is: '), writeln(S). 
