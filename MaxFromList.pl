max_list([L],L).
max_list([Cabeza|Cola],Max):-
    max_list(Cola,MaxRec),
    Max is max(MaxRec,Cabeza).
