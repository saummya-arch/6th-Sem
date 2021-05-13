go:- 
write('Enter list:'),
read(X),
palindrome(X),write('Is a Pallindrome');write('Not a Pallindrome').

is_Equal([],[]):- true.
is_Equal([H1|_],[H2|_]):- false.
is_Equal([H1|T1],[H1|T2]):- is_Equal(T1,T2).
palindrome(L):- reverse(L,R),is_Equal(L,R).