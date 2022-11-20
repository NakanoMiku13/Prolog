members(X,[X|_]).
members(X,[_|T]):-
    members(X,T).
colour(cherry,red).
colour(banana,yellow).
colour(apple,red).
colour(apple,green).
colour(orange,orange).
colour(X,unknow).
membercheck(X,[X|_]):-!.
membercheck(X,[_|L]):-
    membercheck(X,L).
maxi(X,Y,X):- X >= Y, !.
maxi(X,Y,Y).
split([],[],[]).
split([H|T],[H|Z],R):-
    H >= 0,
    !,
    split(T,Z,R).
split([H|T],R,[H|Z]):-
    H < 0,
    split(T,R,Z).
not(G):- call(G),!,fail.
not(_).