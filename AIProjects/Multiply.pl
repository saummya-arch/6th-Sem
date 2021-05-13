go:-write('Enter a number '),
read(N1),
write('Enter another number '),
read(N2),

multiply(N1,N2,R),
write(R).

multiply(N1,0,0).
multiply(N1,N2,R):- N is N2-1,multiply(N1,N,R1),R is R1+N1.