split([],0,R1,R2).
split([Head|_],1,R1,R2):-
    R1 is Head.
firstHalf([],0,0,L).
firstHalf([Head|Tail],0,0,[Head]).
firstHalf([Head|Tail],N1,N,R):-
    N1 < N,
    N2 is N1 + 1,
    append([Head],Tail,R),
    firstHalf(Tail,N2,N,).
split([Head|Tail],N,R1,R2):-
    firstHalf([Head,Tail],N,R1).

