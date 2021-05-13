parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

female(pam).
female(liz).
female(ann).
female(ann).

male(tom).
male(bob).
male(jim).

offspring(X,Y):-parent(Y,X).

mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).

grandparent(X,Z):-parent(X,Y),parent(Y,Z).
different(X,Y):- X\=Y.
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),female(Y),X\=Y.

predecessor(X,Z):-parent(X,Z).
predecessor(X,Z):-parent(X,Y),predecessor(Y,Z).