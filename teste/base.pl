% Fatos
gerou(kelly, maria) .
gerou(cleber, maria) .
gerou(cleber, bruna) .
gerou(maria, julia) .
gerou(maria, pedro) .
gerou(pedro, lucas) .
gerou(bruna, caio) .

feminino(kelly) .
feminino(maria) .
feminino(julia) .
feminino(bruna) .

masculino(cleber) .
masculino(pedro) .
masculino(lucas) .

% Perguntas

% gerou(X,Y).
% retorna todos pares

% gerou(X,julia), gerou(X,pedro) .
% O X que gerou a julia � o mesmo que gerou o pedro? se for true retorna
% quem � o X, se n�o retorna false

% gerou(X,Y), gerou(Y,pedro) .
% retorna os av�s de pedro na variavel X, o pai de pedro na variavel Y

% Regras
% Facilitam as perguntas

filho(Y,X) :-
    gerou(X,Y) .

% Y � filho de X se X gerou Y

mae(X,Y) :-
    gerou(X,Y),
    feminino(X) .

% X � m�e de Y se X gerou Y e X � feminino

avos(X,Z) :-
    gerou(X,Y),
    gerou(Y, Z) .

% X � avo de Z se X gerou um Y em que Y � pai de Z
