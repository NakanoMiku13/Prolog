sumaElementos([],0).
sumaElementos([Head|Tail],Sum):-
    sumaElementos(Tail,Sum1),
    Sum is Sum1 + Head.
calcLong([],0).
calcLong([_|Tail],S):-
    calcLong(Tail,S1),
    S is S1 + 1.
removeElement([_|Tail],1,Tail).
removeElement([Head|Tail],N,[Head|Tail1]):-
    N2 is N - 1,
    removeElement(Tail,N2,Tail1).