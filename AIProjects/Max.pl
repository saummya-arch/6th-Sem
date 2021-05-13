go:-write('Enter a number '),
read(N1),
write('Enter another number '),
read(N2),
max(N1,N2,R),
write(R).

max(X,Y,M):- X>=Y,M is X,!.
max(X,Y,M):- Y>X,M is Y.