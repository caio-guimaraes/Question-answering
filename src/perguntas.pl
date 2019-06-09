% Quais jogos do Brasil na Copa do Mundo teve uma diferença de 3 gols?
?- jogou(brasil, GOLS1, GOLS2, SELECAO, copa_do_mundo, _) , 3 is abs(GOLS1 - GOLS2).

% Nike patrocina o Brasil no ano 2000?
?- patrocina(nike,2000).

% Qual jogador do Brasil que usa a camisa 7 e em qual clube ele joga?
?- numero(JOGADOR, 7) , clube(JOGADOR, CLUBE).

% Qual seleção jogou contra o Brasil resultando numa diferença de 3 gols e ganhou a copa e em qual ano?
?- jogou(brasil, GOLS1, GOLS2, SELECAO, copa_do_mundo, _) , 3 is abs(GOLS1 - GOLS2), venceu(SELECAO, copa_do_mundo, ANO).

% Qual seleção sediou e venceu uma copa do mundo?
?- venceu(SELECAO, copa_do_mundo, ANO),sede(copa_do_mundo, ANO, SELECAO).