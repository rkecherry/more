% Check if a list is a palindrome
palindrome(L) :- reverse(L, L).

% Test the program
:- initialization(main).
main :-
    write('Enter a list: '),
    read(L),
    (   palindrome(L)
    ->  writeln('The list is a palindrome.')
    ;   writeln('The list is not a palindrome.')
    ). 