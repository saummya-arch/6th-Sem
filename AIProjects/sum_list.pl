go:- 
write('Enter list:'),
read(X),
write('sum is:'),
sum(X,L),
write(L).
sum([],0).
sum([H|T],S):- sum(T,S1),S is H+S1.