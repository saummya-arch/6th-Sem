go:- 
write('Enter list:'),
read(X),
remove_dups(X,Y),
write(Y).


member(X, [X|_]).
member(X, [_|T]):- is_member(X,T).

remove_dups([], []).
remove_dups([H|T], R):- member(H, T),remove_dups(T, R).
remove_dups([H|T], [H|R]):-remove_dups(T, R).