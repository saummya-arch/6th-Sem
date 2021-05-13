go:-
write('Enter list:'),
read(L1),
write('Enter the index:'),
read(In),
write('Enter number:'),
read(E),
insert_nth(E,In,L1,R1),
write('The new list is:'),
write(R1).
insert_nth(I, 1, L, [I|L]).
insert_nth(I, N, [H|T], [H|R]):- N1 is N-1,insert_nth(I, N1, T, R).