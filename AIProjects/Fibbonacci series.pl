go:-write('Enter a number of term '),
read(N1),
loop(N1).

loop(1):-fib(0,R),write(R).
loop(N1) :- N1>1,N is N1-1,loop(N),fib(N,R),write(' '),write(R).

fib(0,0).
fib(1,1).
fib(N,S):-N>1, N1 is N-1,N2 is N-2,fib(N1,S1),fib(N2,S2),S is S1+S2.