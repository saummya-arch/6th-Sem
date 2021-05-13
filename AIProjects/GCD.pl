go:-write('Enter a number '),
read(N1),
write('Enter another number '),
read(N2),
gcd(N1,N2,R),
write(R).

gcd(X,X,X).
gcd(X,Y,D):-X<Y, Y1 is Y-X,gcd(X,Y1,D).
gcd(X,Y,D):-Y<X, gcd(Y,X,D).