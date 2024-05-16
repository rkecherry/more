% Predicate to delete an item at a specific position in a list
delete_nth(1, [_|T], T). % Base case: Deleting the first item of the list
delete_nth(N, [H|T], [H|R]) :- % Recursive case: Deleting an item at a position other than the beginning
    N > 1, % Ensure we're not trying to delete at a position less than 1
    N1 is N - 1, % Decrement the position
    delete_nth(N1, T, R). % Recursive call with the decremented position and the tail of the list

% Predicate to read list from user
read_list(L) :-
    write('Please enter the list (in square brackets): '),
    nl, % New line for better readability
    read(L).

% Predicate to read position from user
read_position(N) :-
    write('Please enter the position of the item you want to delete: '),
    nl, % New line for better readability
    read(N).

% Main predicate to run the program
:- initialization(main).
main :-
    write('Welcome to the List Modifier!'), nl,
    read_list(L), % Read the list from the user
    read_position(N), % Read the position from the user
    ( delete_nth(N, L, R) -> write('The resulting list after deletion is: '), writeln(R)
    ; writeln('Invalid Position')
    ).