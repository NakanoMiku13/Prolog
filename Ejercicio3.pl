%% Integrantes
%% Sánchez Calderon Estefany Karina
%% Vázquez López Alejandro
%% Ulrich Tamayo Daniel
contar([],H,_).
contar([H],H,1).
contar([H,A],H,1).
contar([H,H],H,2).
contar([H,A|_],H,1)
contar([H|T],H,L):-
    contar(T,H,L1),
    L is L1 + 1.
contar([H|T],C,1).
codifica([],[]).
codifica([H],[H]).
codifica([H,H],[H,2]).
codifica([Head|Tail],R):-
    contar(Tail,Head,N),
    write(N).