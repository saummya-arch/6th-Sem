go:-
write('Enter list:'),  
read(L),
write('Enter sub-list:'),
read(S),
sublist(S,L),write('S is Sublist of L');write('S is not Sublist of L').
sublist([],L):-true.
sublist(S,[]):-false.
sublist([H1|T1],[H1|T2]):- sublist(T1,T2).
sublist([H1|T1],[H2|T2]):- sublist([H1|T1],T2).