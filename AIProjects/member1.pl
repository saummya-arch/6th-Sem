go:-write('Enter a list:'),
read(X),
write('Enter element you want to search for:'),
read(Y),
member1(Y,X),
write('Member of the list');write('Not a member of list').

member1(X,[X|Tail]).
member1(X,[Head|Tail]):- member1(X,Tail).