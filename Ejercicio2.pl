%% Integrantes
%% Sánchez Calderon Estefany Karina
%% Vázquez López Alejandro
%% Ulrich Tamayo Daniel
cloneList([],L).
cloneList([A],[A,A]).
cloneList([Head|Tail],R):-
    cloneList(Tail,R1),
    append([Head,Head],R1,R).