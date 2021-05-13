initial(0).
final(1).
arc(0,c,6). arc(6,o,5). arc(5,l,4). arc(4,o,2).
arc(2,r,1). arc(2,u,3). arc(3,r,1).

test(Words) :-
initial(Node),
recognize(Node,Words).
recognize(Node,[]) :-
final(Node).
recognize(FromNode,String) :-
arc(FromNode,Label,ToNode),
traverse(Label,String,NewString),
recognize(ToNode,NewString).
traverse(First,[First|Rest],Rest).