and+(true,true):-!.
and+(A,B):-
    A,B,!.
or+(true,true):-!.
or+(true,false):-!.
or+(false,true):-!.
or+(true,A):- A,!.
or+(false,B):- B,!.
or+(A,B):-
    A,B.
nand+(A,B):- A,B,!.
nand+(true,true):-!.
nand+(true,false):-!.
nand+(false,true):-!.
xor+(true,false):-!.
xor+(false,true):-!.
not+(A,B):- A, B = false,!.
not+(A,B):- B = true,!.
conv(A,B):- A,B = true,!.
conv(A,B):- B = false.
impl(A,B,C,I):-
    D = C+(A,B),
    conv(D,F),
    I = F.
tabla(A,B,C):-
    A,B,
    impl(A,B,C,I),
    write(A),write(' '),write(B),write(' '),write(I),nl,
    not+(B,E),tabla(A,E,C),!.
tabla(A,B,C):-
    A,
    impl(A,B,C,I),
    write(A),write(' '),write(B),write(' '),write(I),nl,
    not+(A,E),not+(B,F),tabla(E,F,C),!.
tabla(A,B,C):-
    B,
    impl(A,B,C,I),
    write(A),write(' '),write(B),write(' '),write(I),nl,
    not+(B,E),tabla(A,E,C),!.
tabla(A,B,C):-
    impl(A,B,C,I),
    write(A),write(' '),write(B),write(' '),write(I),!.