/*----------- Sem Regras -----------*/

% 1 - Qual jogador do Brasil que usa a camisa 7 e em qual clube ele joga?
?- numero(JOGADOR, 7) , joga_no_clube(JOGADOR, CLUBE).

% 2 - Qual seleção sediou e venceu uma copa do mundo?
?- venceu_copa_do_mundo(SELECAO, ANO), sede(ANO, SELECAO).

% 3 - Qual cor do uniforme principal do alisson?
?- jogador(alisson, POSICAO), uniforme_principal(POSICAO, CORES).

% 4 - Existe algum volante no elenco atual da seleção que joga no Real Madrid?
?- jogador(JOGADOR, volante), joga_no_clube(JOGADOR, real_madrid).

/*----------- Com Regras -----------*/

% 5 - Qual seleção eliminou o brasil por 6 gols de diferença?
?- eliminado_por(SELECAO, _), contra(ID, SELECAO), placar(ID, [GP, GC]), 6 is GC - GP.

% 6 - Brasil participou de todas as copas?
?- todas_copas(brasil).

% 7 - Qual seleção venceu o Brasil por uma diferença de 3 gols e ganhou a copa e em qual ano?
?- jogou(ID, ANO), contra(ID, SELECAO), placar(ID, [GP, GC]), 3 is (GC - GP), venceu_copa_do_mundo(SELECAO, ANO).

% 8 - Qual o maior artilheiro da seleção?
?- findall(GOLS, artilheiros(JOGADOR, GOLS), LISTA_GOLS), max_list(LISTA_GOLS, MAX),artilheiros(JOGADOR, MAX).

% 9 - Uruguai participou da Copa do Mundo de 1930?
?- participou(uruguai, 1930).

% 10 - Nike patrocina o Brasil no ano 2000?
?- patrocina(nike, 2000).

% 11 - O Brasil é pentacampeão?
?- pentacampeao(brasil).

% 12 - Quais jogos do Brasil na Copa do Mundo teve uma diferença de 3 gols?
?- contra(ID, SELECAO), placar(ID, [GP, GC]), 3 is abs(GP - GC).





