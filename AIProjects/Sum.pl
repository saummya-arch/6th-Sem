go:-write('Enter a number '),
read(N1),
write('Enter another number '),
read(N2),
sum(N1,N2,R),
write(R).
sum(X,Y,Z):-Z is X+Y.