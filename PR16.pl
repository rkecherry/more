% Base case: Inserting at the beginning of the list
insert_nth(I, 1, L, [I|L]).

% Recursive case: Inserting at a position other than the beginning
insert_nth(I, N, [H|T], [H|R]) :-
    N > 1, % Ensure we're not trying to insert at a position less than 1
    N1 is N - 1, % Decrement the position
    insert_nth(I, N1, T, R). % Recursive call with the decremented position and the tail of the list

% Predicate to read list from user
read_list(L) :-
    write('Enter the list (in square brackets): '),
    read(L).

% Predicate to read position from user
read_position(N) :-
    write('Enter the position: '),
    read(N).

% Main predicate to run the program
:- initialization(main).
main :-
    read_list(L),
    read_position(N),
    write('Enter the item to insert: '),
    read(I),
    insert_nth(I, N, L, R),
    write('The resulting list is: '),
    write(R), nl.