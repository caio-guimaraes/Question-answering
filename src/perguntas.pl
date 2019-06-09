% 1 - Quais jogos do Brasil na Copa do Mundo teve uma diferença de 3 gols?
?- jogou(brasil, GOLS1, GOLS2, SELECAO, copa_do_mundo, _) , 3 is abs(GOLS1 - GOLS2).

% 2- Qual jogador do Brasil que usa a camisa 7 e em qual clube ele joga?
?- numero(JOGADOR, 7) , clube(JOGADOR, CLUBE).

% 3- Qual seleção jogou contra o Brasil resultando numa diferença de 3 gols e ganhou a copa e em qual ano?
?- jogou(brasil, GOLS1, GOLS2, SELECAO, copa_do_mundo, _) , 3 is abs(GOLS1 - GOLS2), venceu(SELECAO, copa_do_mundo, ANO).

% 4 -Qual seleção sediou e venceu uma copa do mundo?
?- venceu(SELECAO, copa_do_mundo, ANO),sede(copa_do_mundo, ANO, SELECAO).

% 5 - Qual seleção eliminou o brasil por 6 gols de diferença?
?- eliminado_por(brasil, SELECAO, _, _), jogou(brasil, GOLS1, GOLS2, SELECAO, _, _), 6 is GOLS2 - GOLS1.

% 6 - Brasil participou de todas as copas?
?- todas_copas(brasil).

% 7 -  Nike patrocina o Brasil no ano 2000?
?- patrocina(nike,2000).

% 8 - Qual o maior artilheiro da seleção?
?- artilheiros(JOGADOR1, GOLS1), artilheiros(JOGADOR2, GOLS2), JOGADOR1 @> JOGADOR2, max(GOLS1, GOLS2).