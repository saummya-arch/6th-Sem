go:-write('Enter a number '),
read(N1),
write('Enter power '),
read(N2),
power(N1,N2,R),
write(R).

power(X,1,X).
power(X,Y,P):-Y>1, Y1 is Y-1,power(X,Y1,P1),P is P1*X.