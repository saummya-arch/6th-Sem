go:-write('Enter number of disk '),
read(N1),
write('Enter Name of first tower '),
read(A),
write('Enter Name of second tower '),
read(B),
write('Enter Name of third tower '),
read(C),

toh(N1,A,B,C).

toh(1,X,Y,_) :-  
    write('Move top disk from '), 
    write(X), 
    write(' to '), 
    write(Y), 
    nl. 
toh(N,X,Y,Z) :- 
    N>1, 
    M is N-1, 
    toh(M,X,Z,Y), 
    toh(1,X,Y,_), 
    toh(M,Z,Y,X).