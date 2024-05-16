% Base case: an empty list has even length
evenlength([]).

% Recursive case: if the tail of a list has odd length, then the list has even length
evenlength([_|T]) :- oddlength(T).

% Base case: a list with one element has odd length
oddlength([_]).

% Recursive case: if the tail of a list has even length, then the list has odd length
oddlength([_|T]) :- evenlength(T).

% Test the program
:- initialization(main).
main :-
    write('Enter a list: '),
    read(L),
    (   evenlength(L)
    ->  writeln('The list has even length.')
    ;   writeln('The list has odd length.')
    ).