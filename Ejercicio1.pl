firstHalf([],0,[]).
firstHalf([H],0,[H]).
firstHalf([H|_],0,[H]).
firstHalf([H|T],N,[H|L]):-
    N1 is N - 1,
    firstHalf(T,N1,L).
getLast([_|T],0,T).
getLast([_|T],N,L):-
    N1 is N - 1,
    getLast(T,N1,L).
separate([],0,[],[]).
separate([H],0,[H],[]).
separate([H|L],0,[H],L).
separate([H,H1|T],1,[H,H1],T).
separate([H|T],N,L1,L2):-
    firstHalf([H|T],N,L1),
    getLast(T,N-1,L2).