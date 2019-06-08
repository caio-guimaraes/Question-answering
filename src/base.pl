/*Dados Gerais*/
nome(brasil, "Seleção Brasileira de Futebol").
associacao(brasil, cbf).
confederacao(brasil, conmebol).
apelido(brasil, "Seleção Canarinho").
formada(brasil, 1914).

/*selecao(país)*/
selecao(brasil).
selecao(alemanha).
selecao(italia).
selecao(franca).
selecao(holanda).
selecao(espanha).
selecao(uruguai).
selecao(argentina).
selecao(hungria).
selecao(inglaterra).
selecao(portugal).
selecao(suecia).
selecao(iugoslavia).

/* maiores_jogadores(JOGADOR, SELECAO) */
maiores_jogadores(pele, brasil).
maiores_jogadores(garrincha, brasil).
maiores_jogadores(vava, brasil).
maiores_jogadores(ronaldo, brasil).
maiores_jogadores(rivaldo, brasil).
maiores_jogadores(romario, brasil).
maiores_jogadores(ronaldinhogaucho, brasil).
maiores_jogadores(rivellino, brasil).
maiores_jogadores(zico, brasil).
maiores_jogadores(jairizinho, brasil).
maiores_jogadores(ademirdemenezes, brasil).
maiores_jogadores(leonidasdasilva, brasil).
maiores_jogadores(zagallo, brasil).
maiores_jogadores(carlosalberto, brasil).
maiores_jogadores(robertocarlos, brasil).
maiores_jogadores(tostao, brasil).
maiores_jogadores(didi, brasil).
maiores_jogadores(bellini, brasil).
maiores_jogadores(bebeto, brasil).

/*jogadores que ganharam o titulo de melhor do mundo*/
/*melhor_do_mundo(jogador, ano).*/
melhor_do_mundo(romario, 1994).
melhor_do_mundo(ronaldo, 1996).
melhor_do_mundo(ronaldo, 1997).
melhor_do_mundo(ronaldo, 2002).
melhor_do_mundo(ronaldinho_gaucho, 2004).
melhor_do_mundo(ronaldinho_gaucho, 2005).
melhor_do_mundo(kaka, 2007).

/*rival(seleção)*/
rival(argentina).
rival(uruguai).
rival(alemanha).
rival(italia).
rival(franca).

/*classificou(seleção, competição, ano)*/
classificou(brasil, copa_do_mundo, 1930).
classificou(brasil, copa_do_mundo, 1934).
classificou(brasil, copa_do_mundo, 1938).
classificou(brasil, copa_do_mundo, 1950).
classificou(brasil, copa_do_mundo, 1954).
classificou(brasil, copa_do_mundo, 1958).
classificou(brasil, copa_do_mundo, 1962).
classificou(brasil, copa_do_mundo, 1966).
classificou(brasil, copa_do_mundo, 1970).
classificou(brasil, copa_do_mundo, 1974).
classificou(brasil, copa_do_mundo, 1978).
classificou(brasil, copa_do_mundo, 1982).
classificou(brasil, copa_do_mundo, 1986).
classificou(brasil, copa_do_mundo, 1990).
classificou(brasil, copa_do_mundo, 1994).
classificou(brasil, copa_do_mundo, 1998).
classificou(brasil, copa_do_mundo, 2002).
classificou(brasil, copa_do_mundo, 2006).
classificou(brasil, copa_do_mundo, 2010).
classificou(brasil, copa_do_mundo, 2014).
classificou(brasil, copa_do_mundo, 2018).

classificou(espanha, copa_do_mundo, 1934).
classificou(suecia, copa_do_mundo, 1938).
classificou(suecia, copa_do_mundo, 1950).
classificou(espanha, copa_do_mundo, 1950).
classificou(hungria, copa_do_mundo, 1954).
classificou(inglaterra, copa_do_mundo, 1958).
classificou(inglaterra, copa_do_mundo, 1962).
classificou(hungria, copa_do_mundo, 1966).
classificou(portugal, copa_do_mundo, 1966).
classificou(alemanha, copa_do_mundo, 1966).
classificou(uruguai, copa_do_mundo, 1970).
classificou(italia, copa_do_mundo, 1970).
classificou(argentina, copa_do_mundo, 1974).
classificou(holanda, copa_do_mundo, 1974).
classificou(suecia, copa_do_mundo, 1978).
classificou(espanha, copa_do_mundo, 1978).
classificou(argentina, copa_do_mundo, 1982).
classificou(franca, copa_do_mundo, 1982).
classificou(alemanha, copa_do_mundo, 1982).
classificou(espanha, copa_do_mundo, 1986).
classificou(franca, copa_do_mundo, 1986).
classificou(argentina, copa_do_mundo, 1990).
classificou(suecia, copa_do_mundo, 1994).
classificou(holanda, copa_do_mundo, 1994).
classificou(italia, copa_do_mundo, 1994).
classificou(holanda, copa_do_mundo, 1998).
classificou(inglaterra, copa_do_mundo, 2002).
classificou(alemanha, copa_do_mundo, 2002).
classificou(franca, copa_do_mundo, 2006).
classificou(inglaterra, copa_do_mundo, 2006).
classificou(holanda, copa_do_mundo, 2010).
classificou(portugal, copa_do_mundo, 2010).
classificou(holanda, copa_do_mundo, 2014).
classificou(argentina, copa_do_mundo, 2014).
classificou(argentina, copa_do_mundo, 2018).
classificou(inglaterra, copa_do_mundo, 2018).
classificou(alemanha, copa_do_mundo, 2018).

/*se uma seleção venceu uma competição entao ela participou da mesma*/
participou(SELECAO, COMPETICAO, ANO) :- classificou(SELECAO, COMPETICAO, ANO), !; venceu(SELECAO, COMPETICAO, ANO).
todas_copas(SELECAO) :- aggregate_all(count, classificou(SELECAO, copa_do_mundo, _), Count), Count = 21.

/* sede(competição, ano, local) */
sede(copa_do_mundo, 1930, uruguai).
sede(copa_do_mundo, 1934, italia).
sede(copa_do_mundo, 1938, franca).
sede(copa_do_mundo, 1950, brasil).
sede(copa_do_mundo, 1954, suica).
sede(copa_do_mundo, 1958, suecia).
sede(copa_do_mundo, 1962, chile).
sede(copa_do_mundo, 1966, inglaterra).
sede(copa_do_mundo, 1970, mexico).
sede(copa_do_mundo, 1974, alemanha).
sede(copa_do_mundo, 1978, argentina).
sede(copa_do_mundo, 1982, espanha).
sede(copa_do_mundo, 1986, mexico).
sede(copa_do_mundo, 1990, italia).
sede(copa_do_mundo, 1994, eua).
sede(copa_do_mundo, 1998, franca).
sede(copa_do_mundo, 2002, coreiadosul).
sede(copa_do_mundo, 2002, japao).
sede(copa_do_mundo, 2006, alemanha).
sede(copa_do_mundo, 2010, africadosul).
sede(copa_do_mundo, 2014, brasil).
sede(copa_do_mundo, 2018, russia).

sede(olimpiadas, 2016, riodejaneiro).

/*lista de eliminações da seleção brasileira*/
/*eliminado_por(seleção1, seleção2, competição, ano)*/
eliminado_por(brasil, iugoslavia, copa_do_mundo, 1930).
eliminado_por(brasil, espanha, copa_do_mundo, 1934).
eliminado_por(brasil, italia, copa_do_mundo, 1938).
eliminado_por(brasil, uruguai, copa_do_mundo, 1950).
eliminado_por(brasil, hungria, copa_do_mundo, 1954).
eliminado_por(brasil, portugal, copa_do_mundo, 1966).
eliminado_por(brasil, holanda, copa_do_mundo, 1974).
eliminado_por(brasil, argentina, copa_do_mundo, 1978).
eliminado_por(brasil, italia, copa_do_mundo, 1982).
eliminado_por(brasil, franca, copa_do_mundo, 1986).
eliminado_por(brasil, argentina, copa_do_mundo, 1990).
eliminado_por(brasil, franca, copa_do_mundo, 1998).
eliminado_por(brasil, franca, copa_do_mundo, 2006).
eliminado_por(brasil, holanda, copa_do_mundo, 2010).
eliminado_por(brasil, alemanha, copa_do_mundo, 2014).
eliminado_por(brasil, belgica, copa_do_mundo, 2018).

/*venceu(seleção, competição, ano)*/
venceu(uruguai, copa_do_mundo, 1930).
venceu(italia, copa_do_mundo, 1934).
venceu(italia, copa_do_mundo, 1938).
venceu(uruguai, copa_do_mundo, 1950).
venceu(alemanha, copa_do_mundo, 1954).
venceu(brasil, copa_do_mundo, 1958).
venceu(brasil, copa_do_mundo, 1962).
venceu(inglaterra, copa_do_mundo, 1966).
venceu(brasil, copa_do_mundo, 1970).
venceu(alemanha, copa_do_mundo, 1974).
venceu(argentina, copa_do_mundo, 1978).
venceu(italia, copa_do_mundo, 1982).
venceu(argentina, copa_do_mundo, 1986).
venceu(alemanha, copa_do_mundo, 1990).
venceu(brasil, copa_do_mundo, 1994).
venceu(franca, copa_do_mundo, 1998).
venceu(brasil, copa_do_mundo, 2002).
venceu(italia, copa_do_mundo, 2006).
venceu(espanha, copa_do_mundo, 2010).
venceu(alemanha, copa_do_mundo, 2014).
venceu(franca, copa_do_mundo, 2018).

venceu(brasil, copa_america, 1919).
venceu(brasil, copa_america, 1922).
venceu(brasil, copa_america, 1949).
venceu(brasil, copa_america, 1989).
venceu(brasil, copa_america, 1997).
venceu(brasil, copa_america, 1999).
venceu(brasil, copa_america, 2004).
venceu(brasil, copa_america, 2007).

venceu(brasil, copa_das_confederacoes, 1997).
venceu(brasil, copa_das_confederacoes, 2005).
venceu(brasil, copa_das_confederacoes, 2009).
venceu(brasil, copa_das_confederacoes, 2013).

venceu(brasil, olimpiadas, 2016).

/*se o brasil nao foi eliminado por nenhuma seleção em um determinado ano entao ele venceu a competição*/
/*inutil por enquanto
venceu(brasil, COMPETICAO, ANO) :- not(eliminado_por(brasil, _, COMPETICAO, ANO)).*/

campeao_mundial(SELECAO) :- venceu(SELECAO,copa_do_mundo,_).
campeao_olimpico(SELECAO) :- venceu(SELECAO,olimpiadas,_).

octacampeao(SELECAO, COMPETICAO) :- aggregate_all(count, venceu(SELECAO, COMPETICAO, _), Count), Count = 8.
pentacampeao(SELECAO, COMPETICAO) :- aggregate_all(count, venceu(SELECAO, COMPETICAO, _), Count), Count = 5.
tetracampeao(SELECAO, COMPETICAO) :- aggregate_all(count, venceu(SELECAO, COMPETICAO, _), Count), Count = 4.
tricampeao(SELECAO, COMPETICAO) :- aggregate_all(count, venceu(SELECAO, COMPETICAO, _), Count), Count = 3.
bicampeao(SELECAO, COMPETICAO) :- aggregate_all(count, venceu(SELECAO, COMPETICAO, _), Count), Count = 2.

/*Uniformes*/
/*uniforme(membro, tipo, camisa, calção, meias).*/
uniforme(jogador, principal, amarelo, azul, branco).
uniforme(jogador, visitante, azul, branco, azul).
uniforme(jogador, alternativo, azul, branco, branco).

uniforme(goleiro, principal, preto, preto, preto).
uniforme(goleiro, visitante, cinza, cinza, cinza).
uniforme(goleiro, alternativo, verde_claro, verde_claro, verde_claro).

uniforme(jogador, treino, verde_escuro, verde_escuro, branco).
uniforme(goleiro, treino, verde_claro, verde_escuro, branco).
uniforme(comissao_tecnica, treino, branco, verde_escuro, branco).

/*lista de patrocinadores*/
/*patrocinador(marca, inicio, fim)*/
patrocinador(itau, 2008, 2022).
patrocinador(vivo, 2005, 2023).
patrocinador(guarana_antartica, 2001, 2019).
patrocinador(mastercard, 2012, 2020).
patrocinador(gol, 2013, 2021).
patrocinador(ultrafarma, 2015, 2045).
patrocinador(cimed, 2016, 2023).
patrocinador(semp, 2019, 2022).
patrocinador(nike, 1996, 2018).

/*Uma marca patrocina a seleção em tal ANO, se o contrato de patrocinador está entre INI e FIM*/
patrocina(MARCA, ANO) :- patrocinador(MARCA, INI, FIM), ANO >= INI, ANO =< FIM.

fazparte(JOGADOR, brasil) :- compoe_elenco(JOGADOR, _, _, _, _).

/*Elenco atual*/
/*compoe_elenco(jogador, numero, posicao, idade, clube)*/
compoe_elenco(alisson, 1, goleiro, 26, liverpool).
compoe_elenco(cassio, 16, goleiro, 31, corinthians).
compoe_elenco(ederson, 23, goleiro, 25, manchester_city).
compoe_elenco(filipe_luis, 6, lateral, 33, atletico_de_madrid).
compoe_elenco(alex_sandro, 12, lateral, 28, juventus).
compoe_elenco(daniel_alves, 13, lateral, 36, paris_saint_germain).
compoe_elenco(fagner, 22, lateral, 29, corinthians).
compoe_elenco(thiago_silva, 2, zagueiro, 34, paris_saint_germain).
compoe_elenco(miranda, 3, zagueiro, 34, internazionale).
compoe_elenco(marquinhos, 4, zagueiro, 24, paris_saint_germain).
compoe_elenco(eder_militao, 14, zagueiro, 21, porto).
compoe_elenco(casemiro, 5, volante, 27, real_madrid).
compoe_elenco(arthur, 8, volante, 22, barcelona).
compoe_elenco(allan, 15, volante, 28, napoli).
compoe_elenco(fernandinho, 17, volante, 34, manchester_city).
compoe_elenco(philippe_coutinho, 11, meia, 26, barcelona).
compoe_elenco(lucas_paqueta, 18, meia, 21, milan).
compoe_elenco(david_neres, 7, atacante, 22, ajax).
compoe_elenco(gabriel_jesus, 9, atacante, 21, manchester_city).
compoe_elenco(neymar, 10, atacante, 27, paris_saint_germain).
compoe_elenco(everton, 19, atacante, 22, gremio).
compoe_elenco(roberto_firmino, 20, atacante, 27, liverpool).
compoe_elenco(richarlison, 21, atacante, 21, everton).

posicao(JOGADOR, POSICAO) :- compoe_elenco(JOGADOR, _, POSICAO, _, _).
numero(JOGADOR, NUMERO) :- compoe_elenco(JOGADOR, NUMERO, _, _, _).
clube(JOGADOR, CLUBE) :- compoe_elenco(JOGADOR, _, _, _, CLUBE).
idade(JOGADOR, IDADE) :- compoe_elenco(JOGADOR, _, _, IDADE, _).


/*lista de artilheiros da seleção*/
artilheiros(pele, 77).
artilheiros(ronaldo, 67).
artilheiros(zico, 66).
artilheiros(neymar, 59).
artilheiros(romario, 55).
artilheiros(jairizinho, 44).
artilheiros(rivelino, 43).
artilheiros(bebeto, 39).
artilheiros(rivaldo, 37).



