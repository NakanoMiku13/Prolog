%Base de conocimiento
personaje(misionero).
personaje(canibal).
lugar(orilla_origen).
lugar(orilla_destino).
objeto(balsa).
%Simbolos de propiedad
ocupantes(X,Y,Z):-((personaje(X),personaje(Y));personaje(Y)),objeto(Z).
ubicacion(X,Y):-personaje(X),lugar(Y).
%Simbolos de funcion
cruzar(X,Y,Z,W):-objeto(Z),ocupantes(X,Y,Z),lugar(W).
comer(X,Y):-X>1,Y<2.
ganar(juego):-
    ubicacion(misionero,orilla_destino),ubicacion(misionero,orilla_destino),ubicacion(misionero,orilla_destino),
    ubicacion(canibal,orilla_destino),ubicacion(canibal,orilla_destino),ubicacion(canibal,orilla_destino).
pierde(juego):-comer(2,1);comer(3,1).
jugar(juego):-ganar(juego);pierde(juego).