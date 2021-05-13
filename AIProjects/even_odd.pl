go:-
write('enter list:'),
read(X),
oddeven(X).
oddeven([]):-write('empty list').
oddeven(X):-length(X,L),
 L>=0 ->
 (
  L1 is mod(L,2),
  L1=:=0 ->
   write('even length')
  ;
   write('odd length')
 ).
