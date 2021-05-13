go:-
write('Enter list:'),
read(L),
write('Enter the element:'),
read(X),
delete_all(X,L,R),
write('The new list is:'),
write(R).
delete_all(X, [], []).
delete_all(X, [X|T], R):- delete_all(X, T, R).
delete_all(X, [H|T], [H|R]):- delete_all(X, T, R).