% 1 - Quais jogos do Brasil na Copa do Mundo teve uma diferença de 3 gols?
?- contra(ID, SELECAO), placar(ID, [GOLS1, GOLS2]), 3 is abs(GOLS1 - GOLS2).

% 2- Qual jogador do Brasil que usa a camisa 7 e em qual clube ele joga?
?- numero(JOGADOR, 7) , joga_no_clube(JOGADOR, CLUBE).

% 3- Qual seleção venceu o Brasil por uma diferença de 3 gols e ganhou a copa e em qual ano?
?- jogou(ID, ANO), contra(ID, SELECAO), placar(ID, [GOLS1, GOLS2]), 3 is (GOLS2 - GOLS1), venceu_copa_do_mundo(SELECAO, ANO).

% 4 -Qual seleção sediou e venceu uma copa do mundo?
?- venceu_copa_do_mundo(SELECAO, ANO), sede(ANO, SELECAO).

% 5 - Qual seleção eliminou o brasil por 6 gols de diferença?
?- eliminado_por(SELECAO, _), contra(ID, SELECAO), placar(ID, [GOLS1, GOLS2]), 6 is GOLS2 - GOLS1.

% 6 - Brasil participou de todas as copas?
?- todas_copas(brasil).

% 7 - Nike patrocina o Brasil no ano 2000?
?- patrocina(nike,2000).

% 8 - Qual o maior artilheiro da seleção?
?- findall(GOLS,artilheiros(JOGADOR,GOLS),LISTA_GOLS), max_list(LISTA_GOLS,MAX),artilheiros(JOGADOR,MAX).

% 9 - Qual cor do uniforme principal do alisson?
?- jogador(alisson, POSICAO), uniforme_principal(POSICAO, CORES).