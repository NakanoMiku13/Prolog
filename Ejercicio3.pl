%% Integrantes
%% Sánchez Calderon Estefany Karina
%% Vázquez López Alejandro
%% Ulrich Tamayo Daniel
contar([],Comp,0).
contar([H],H,0):-
    N is 1.
contar([Head|Tail],Head,N):-
    contar(Tail,Head,N1),
    N is N1 + 1.
contar([Head|Tail],Comp,N):-
    N is 0.
codifica([],_).
codifica([H],[H,1]).
codifica([Head|Tail],R):-
    contar(Tail,Head,N1),
    codifica(Tail,R1),
    N is N1 + 1,
    append([Head,N],R1,R).