go:- 
write('Enter list:'),
read(X),
rev(X, L),
write('Reverse list: '),write(L).
rev([],[]).  
rev([H|T], R):-rev(T, RL), append(RL, [H], R).