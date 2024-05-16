merge([], L, L).
merge(L, [], L).
merge([H1|T1], [H2|T2], [H1|T]) :- H1 =< H2, merge(T1, [H2|T2], T).
merge([H1|T1], [H2|T2], [H2|T]) :- H1 > H2, merge([H1|T1], T2, T).

main :-
    write('Enter first list: '),
    read(L1),
    write('Enter second list: '),
    read(L2),
    merge(L1, L2, L3),
    write('Merged list: '),
    write(L3).

:-initialization(main).