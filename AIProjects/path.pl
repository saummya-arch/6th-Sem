go:-write('Points are p,q,r,s,t \n'),
write('Enter first point of edge '),
read(P1),
write('Enter second point of edge '),
read(P2),

path(P1,P2), write('Path Exists');write('Path Not Exists').


edge(p,q).
edge(q,r).
edge(q,s).
edge(s,t).

path(A,B) :- edge(A,B).
path(A,B) :- edge(A,C),
path(C,B).