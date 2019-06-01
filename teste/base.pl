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
% O X que gerou a julia é o mesmo que gerou o pedro? se for true retorna
% quem é o X, se não retorna false

% gerou(X,Y), gerou(Y,pedro) .
% retorna os avós de pedro na variavel X, o pai de pedro na variavel Y

% Regras
% Facilitam as perguntas

filho(Y,X) :-
    gerou(X,Y) .

% Y é filho de X se X gerou Y

mae(X,Y) :-
    gerou(X,Y),
    feminino(X) .

% X é mãe de Y se X gerou Y e X é feminino

avos(X,Z) :-
    gerou(X,Y),
    gerou(Y, Z) .

% X é avo de Z se X gerou um Y em que Y é pai de Z
