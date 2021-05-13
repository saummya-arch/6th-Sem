go:-write('Enter a number '),
read(N1),

factorial(N1,R),
write(R).

factorial(1,1).
factorial(X,Y):-X>1, X1 is X-1,factorial(X1,Y1),Y is Y1*X.