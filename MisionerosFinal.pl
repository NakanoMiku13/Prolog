%Base de conocimiento
personaje(misionero).
personaje(canibal).
objeto(barca).
lugar(orilla_destino).
lugar(orilla_origen).
%Propiedades
ocupantes(X, Y, Z):-
	((personaje(X),personaje(Y));
	(personaje(X))),
	objeto(Z).


%Funciones
ubicacion(X,Y):-lugar(Y),personaje(X).
misionero_vivo(X,Y,Z):-
	% X = misionero, Y = canibal, Z = lugar
	lugar(Z),
	(X > Y ; X = Y).
cruzar(X,Y,Z):-personaje(X),personaje(Y),ocupantes(X,Y,barca),ubicacion(X,Z),ubicacion(Y,Z),lugar(Z).
ganar(juego):-
	cruzar(misionero,canibal,orilla_destino),
	cruzar(misionero,_,orilla_origen),
	cruzar(canibal,canibal,orilla_destino),
	cruzar(canibal,_,orilla_origen),
	cruzar(misionero,misionero,orilla_destino),
	cruzar(misionero,canibal,orilla_origen),
	cruzar(misionero,misionero,orilla_destino),
	cruzar(canibal,_,orilla_origen),
	cruzar(canibal,canibal,orilla_destino),
	cruzar(canibal,_,orilla_origen),
	cruzar(canibal,canibal,orilla_destino).

