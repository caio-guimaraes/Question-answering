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
selecao(polonia).
selecao(tchecoslovaquia).
selecao(turquia).
selecao(noruega).

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

/*seleções que se classificaram para a copa do mundo*/
/*classificou(seleção, competição, ano)*/
classificou(brasil, 1930).
classificou(brasil, 1934).
classificou(brasil, 1938).
classificou(brasil, 1950).
classificou(brasil, 1954).
classificou(brasil, 1958).
classificou(brasil, 1962).
classificou(brasil, 1966).
classificou(brasil, 1970).
classificou(brasil, 1974).
classificou(brasil, 1978).
classificou(brasil, 1982).
classificou(brasil, 1986).
classificou(brasil, 1990).
classificou(brasil, 1994).
classificou(brasil, 1998).
classificou(brasil, 2002).
classificou(brasil, 2006).
classificou(brasil, 2010).
classificou(brasil, 2014).
classificou(brasil, 2018).

classificou(espanha, 1934).
classificou(suecia, 1938).
classificou(suecia, 1950).
classificou(espanha, 1950).
classificou(hungria, 1954).
classificou(inglaterra, 1958).
classificou(inglaterra, 1962).
classificou(hungria, 1966).
classificou(portugal, 1966).
classificou(alemanha, 1966).
classificou(uruguai, 1970).
classificou(italia, 1970).
classificou(argentina, 1974).
classificou(holanda, 1974).
classificou(suecia, 1978).
classificou(espanha, 1978).
classificou(argentina, 1982).
classificou(franca, 1982).
classificou(alemanha, 1982).
classificou(espanha, 1986).
classificou(franca, 1986).
classificou(argentina, 1990).
classificou(suecia, 1994).
classificou(holanda, 1994).
classificou(italia, 1994).
classificou(holanda, 1998).
classificou(inglaterra, 2002).
classificou(alemanha, 2002).
classificou(franca, 2006).
classificou(inglaterra, 2006).
classificou(holanda, 2010).
classificou(portugal, 2010).
classificou(holanda, 2014).
classificou(argentina, 2014).
classificou(argentina, 2018).
classificou(inglaterra, 2018).
classificou(alemanha, 2018).

/*se uma seleção venceu uma copa do mundo entao ela participou da copa*/
participou(SELECAO, ANO) :- classificou(SELECAO, ANO), !; venceu_copa_do_mundo(SELECAO, ANO).
todas_copas(SELECAO) :- aggregate_all(count, classificou(SELECAO, _), Count), Count = 21.

/*lista de sedes da copa do mundo*/
/* sede(ano, local) */
sede(1930, uruguai).
sede(1934, italia).
sede(1938, franca).
sede(1950, brasil).
sede(1954, suica).
sede(1958, suecia).
sede(1962, chile).
sede(1966, inglaterra).
sede(1970, mexico).
sede(1974, alemanha).
sede(1978, argentina).
sede(1982, espanha).
sede(1986, mexico).
sede(1990, italia).
sede(1994, eua).
sede(1998, franca).
sede(2002, coreiadosul).
sede(2002, japao).
sede(2006, alemanha).
sede(2010, africadosul).
sede(2014, brasil).
sede(2018, russia).

sede_olimpiadas(2016, riodejaneiro).

/*lista de eliminações da seleção brasileira na copa do mundo*/
/*eliminado_por(seleção adversaria, ano)*/
eliminado_por(iugoslavia, 1930).
eliminado_por(espanha, 1934).
eliminado_por(italia, 1938).
eliminado_por(uruguai, 1950).
eliminado_por(hungria, 1954).
eliminado_por(portugal, 1966).
eliminado_por(holanda, 1974).
eliminado_por(argentina, 1978).
eliminado_por(italia, 1982).
eliminado_por(franca, 1986).
eliminado_por(argentina, 1990).
eliminado_por(franca, 1998).
eliminado_por(franca, 2006).
eliminado_por(holanda, 2010).
eliminado_por(alemanha, 2014).
eliminado_por(belgica, 2018).

/*venceu(seleção, competição, ano)*/
venceu_copa_do_mundo(uruguai, 1930).
venceu_copa_do_mundo(italia, 1934).
venceu_copa_do_mundo(italia, 1938).
venceu_copa_do_mundo(uruguai, 1950).
venceu_copa_do_mundo(alemanha, 1954).
venceu_copa_do_mundo(brasil, 1958).
venceu_copa_do_mundo(brasil, 1962).
venceu_copa_do_mundo(inglaterra, 1966).
venceu_copa_do_mundo(brasil, 1970).
venceu_copa_do_mundo(alemanha, 1974).
venceu_copa_do_mundo(argentina, 1978).
venceu_copa_do_mundo(italia, 1982).
venceu_copa_do_mundo(argentina, 1986).
venceu_copa_do_mundo(alemanha, 1990).
venceu_copa_do_mundo(brasil, 1994).
venceu_copa_do_mundo(franca, 1998).
venceu_copa_do_mundo(brasil, 2002).
venceu_copa_do_mundo(italia, 2006).
venceu_copa_do_mundo(espanha, 2010).
venceu_copa_do_mundo(alemanha, 2014).
venceu_copa_do_mundo(franca, 2018).

venceu_copa_america(brasil, 1919).
venceu_copa_america(brasil, 1922).
venceu_copa_america(brasil, 1949).
venceu_copa_america(brasil, 1989).
venceu_copa_america(brasil, 1997).
venceu_copa_america(brasil, 1999).
venceu_copa_america(brasil, 2004).
venceu_copa_america(brasil, 2007).

venceu_copa_das_confederacoes(brasil, 1997).
venceu_copa_das_confederacoes(brasil, 2005).
venceu_copa_das_confederacoes(brasil, 2009).
venceu_copa_das_confederacoes(brasil, 2013).

venceu_olimpiadas(brasil, 2016).

campeao_mundial(SELECAO) :- venceu_copa_do_mundo(SELECAO,_), !.
campeao_olimpico(SELECAO) :- venceu_olimpiadas(SELECAO,_).

octacampeao(SELECAO) :- aggregate_all(count, venceu_copa_america(SELECAO, _), Count), Count = 8.
pentacampeao(SELECAO) :- aggregate_all(count, venceu_copa_do_mundo(SELECAO, _), Count), Count = 5.
tetracampeao(SELECAO) :- aggregate_all(count, venceu_copa_do_mundo(SELECAO, _), Count), Count = 4.
tricampeao(SELECAO) :- aggregate_all(count, venceu_copa_do_mundo(SELECAO, _), Count), Count = 3.
bicampeao(SELECAO) :- aggregate_all(count, venceu_copa_do_mundo(SELECAO, _), Count), Count = 2.

/*Uniformes*/
/*uniforme_tipo(membro, [camisa, calção, meias]).*/
uniforme_principal(jogador, [amarelo, azul, branco]).
uniforme_principal(goleiro, [preto, preto, preto]).

uniforme_visitante(jogador, [azul, branco, azul]).
uniforme_visitante(goleiro, [cinza, cinza, cinza]).

uniforme_alternativo(jogador, [azul, branco, branco]).
uniforme_alternativo(goleiro, [verde_claro, verde_claro, verde_claro]).

uniforme_treino(jogador, [verde_escuro, verde_escuro, branco]).
uniforme_treino(goleiro, [verde_claro, verde_escuro, branco]).
uniforme_treino(comissao_tecnica, [branco, verde_escuro, branco]).

/*lista de patrocinadores*/
/*patrocinador(marca, [inicio, fim])*/
patrocinador(itau, [2008, 2022]).
patrocinador(vivo, [2005, 2023]).
patrocinador(guarana_antartica, [2001, 2019]).
patrocinador(mastercard, [2012, 2020]).
patrocinador(gol, [2013, 2021]).
patrocinador(ultrafarma, [2015, 2045]).
patrocinador(cimed, [2016, 2023]).
patrocinador(semp, [2019, 2022]).
patrocinador(nike, [1996, 2018]).

/*Uma marca patrocina a seleção em tal ANO, se o contrato de patrocinador está entre INI e FIM*/
patrocina(MARCA, ANO) :- patrocinador(MARCA, [INI, FIM]), ANO >= INI, ANO =< FIM.

fazparte(JOGADOR, brasil) :- jogador(JOGADOR, _).

/*Elenco atual*/
/*jogador(JOGADOR, POSICAO)*/
jogador(alisson, goleiro).
jogador(cassio, goleiro).
jogador(ederson, goleiro).
jogador(filipe_luis, lateral).
jogador(alex_sandro, lateral).
jogador(daniel_alves, lateral).
jogador(fagner, lateral).
jogador(thiago_silva, zagueiro).
jogador(miranda, zagueiro).
jogador(marquinhos, zagueiro).
jogador(eder_militao, zagueiro).
jogador(casemiro, volante).
jogador(arthur, volante).
jogador(allan, volante).
jogador(fernandinho, volante).
jogador(philippe_coutinho, meia).
jogador(lucas_paqueta, meia).
jogador(david_neres, atacante).
jogador(gabriel_jesus, atacante).
jogador(neymar, atacante).
jogador(everton, atacante).
jogador(roberto_firmino, atacante).
jogador(richarlison, atacante).

/*jogador(JOGADOR, NUMERO)*/
numero(alisson, 1).
numero(cassio, 16).
numero(ederson, 23).
numero(filipe_luis, 6).
numero(alex_sandro, 12).
numero(daniel_alves, 13).
numero(fagner, 22).
numero(thiago_silva, 2).
numero(miranda, 3).
numero(marquinhos, 4).
numero(eder_militao, 14).
numero(casemiro, 5).
numero(arthur, 8).
numero(allan, 15).
numero(fernandinho, 17).
numero(philippe_coutinho, 11).
numero(lucas_paqueta, 18).
numero(david_neres, 7).
numero(gabriel_jesus, 9).
numero(neymar, 10).
numero(everton, 19).
numero(roberto_firmino, 20).
numero(richarlison, 21).

/*joga_no_clube(JOGADOR, CLUBE)*/
joga_no_clube(alisson, liverpool).
joga_no_clube(cassio, corinthians).
joga_no_clube(ederson, manchester_city).
joga_no_clube(filipe_luis, atletico_de_madrid).
joga_no_clube(alex_sandro, juventus).
joga_no_clube(daniel_alves, paris_saint_germain).
joga_no_clube(fagner, corinthians).
joga_no_clube(thiago_silva, paris_saint_germain).
joga_no_clube(miranda, internazionale).
joga_no_clube(marquinhos, paris_saint_germain).
joga_no_clube(eder_militao, porto).
joga_no_clube(casemiro, real_madrid).
joga_no_clube(arthur, barcelona).
joga_no_clube(allan, napoli).
joga_no_clube(fernandinho, manchester_city).
joga_no_clube(philippe_coutinho, barcelona).
joga_no_clube(lucas_paqueta, milan).
joga_no_clube(david_neres, ajax).
joga_no_clube(gabriel_jesus, manchester_city).
joga_no_clube(neymar, paris_saint_germain).
joga_no_clube(everton, gremio).
joga_no_clube(roberto_firmino, liverpool).
joga_no_clube(richarlison, everton).

/*lista de artilheiros da seleção*/
/*artilheiros(jogador, gols).*/
artilheiros(pele, 77).
artilheiros(ronaldo, 67).
artilheiros(zico, 66).
artilheiros(neymar, 59).
artilheiros(romario, 55).
artilheiros(jairizinho, 44).
artilheiros(rivelino, 43).
artilheiros(bebeto, 39).
artilheiros(rivaldo, 37).

/*lista de jogos do brasil na copa do mundo*/
/*jogo(id_jogo, ano)*/
jogou(1, 1930).
jogou(2, 1934).
jogou(3, 1938).
jogou(4, 1938).
jogou(5, 1938).
jogou(6, 1950).
jogou(7, 1950).
jogou(8, 1950).
jogou(9, 1950).
jogou(10, 1950).
jogou(11, 1950).
jogou(12, 1954).
jogou(13, 1958).
jogou(14, 1958).
jogou(15, 1958).
jogou(16, 1958).
jogou(17, 1962).
jogou(18, 1962).
jogou(19, 1962).
jogou(20, 1962).
jogou(21, 1962).
jogou(22, 1962).
jogou(23, 1966).
jogou(24, 1966).
jogou(25, 1966).
jogou(26, 1970).
jogou(27, 1970).
jogou(28, 1970).
jogou(29, 1974).
jogou(30, 1974).
jogou(31, 1974).
jogou(32, 1974).
jogou(33, 1974).
jogou(34, 1978).
jogou(35, 1978).
jogou(36, 1978).
jogou(37, 1978).
jogou(38, 1978).
jogou(39, 1978).
jogou(40, 1978).
jogou(41, 1982).
jogou(42, 1982).
jogou(43, 1982).
jogou(44, 1982).
jogou(45, 1982).
jogou(46, 1986).
jogou(47, 1986).
jogou(48, 1986).
jogou(49, 1986).
jogou(50, 1986).
jogou(51, 1994).
jogou(52, 1994).
jogou(53, 1998).
jogou(54, 1998).
jogou(55, 1998).
jogou(56, 1998).
jogou(57, 1998).
jogou(58, 2002).
jogou(59, 2002).
jogou(60, 2006).
jogou(61, 2006).
jogou(62, 2010).
jogou(63, 2010).
jogou(64, 2010).
jogou(65, 2010).
jogou(66, 2010).
jogou(67, 2014).
jogou(68, 2014).
jogou(69, 2014).
jogou(70, 2014).
jogou(71, 2014).
jogou(72, 2014).
jogou(73, 2018).
jogou(74, 2018).
jogou(75, 2018).
jogou(76, 2018).

/*contra(id_jogo, adversario).*/
contra(1, iugoslavia).
contra(2, espanha).
contra(3, tchecoslovaquia).
contra(4, tchecoslovaquia).
contra(5, italia).
contra(6, mexico).
contra(7, suica).
contra(8, iugoslavia).
contra(9, suecia).
contra(10, espanha).
contra(11, uruguai).
contra(12, hungria).
contra(13, austria).
contra(14, inglaterra).
contra(15, uniao_sovietica).
contra(16, suecia).
contra(17, mexico).
contra(18, tchecoslovaquia).
contra(19, espanha).
contra(20, inglaterra).
contra(21, chile).
contra(22, tchecoslovaquia).
contra(23, bulgaria).
contra(24, hungria).
contra(25, portugal).
contra(26, peru).
contra(27, uruguai).
contra(28, italia).
contra(29, zaire).
contra(30, alemanha).
contra(31, argentina).
contra(32, holanda).
contra(33, polonia).
contra(34, suecia).
contra(35, espanha).
contra(36, austria).
contra(37, peru).
contra(38, argentina).
contra(39, polonia).
contra(40, italia).
contra(41, uniao_sovietica).
contra(42, escocia).
contra(43, nova_zelandia).
contra(44, argentina).
contra(45, italia).
contra(46, espanha).
contra(47, argelia).
contra(48, irlanda_do_norte).
contra(49, polonia).
contra(50, franca).
contra(51, suecia).
contra(52, suecia).
contra(53, noruega).
contra(54, chile).
contra(55, dinamarca).
contra(56, holanda).
contra(57, franca).
contra(58, turquia).
contra(59, turquia).
contra(60, gana).
contra(61, franca).
contra(62, coreia_do_norte).
contra(63, costa_do_marfim).
contra(64, portugal).
contra(65, chile).
contra(66, holanda).
contra(67, croacia).
contra(68, mexico).
contra(69, camaroes).
contra(70, colombia).
contra(71, alemanha).
contra(72, holanda).
contra(73, suica).
contra(74, servia).
contra(75, mexico).
contra(76, belgica).

/*placar(id_jogo, [gols_brasil, gols_adversario])*/
placar(1, [1,2]).
placar(2, [1,3]).
placar(3, [1,1]).
placar(4, [2,1]).
placar(5, [2,3]).
placar(6, [4,0]).
placar(7, [2,2]).
placar(8, [2,0]).
placar(9, [7,1]).
placar(10, [6,1]).
placar(11, [1,2]).
placar(12, [2,4]).
placar(13, [3,0]).
placar(14, [0,0]).
placar(15, [2,0]).
placar(16, [5,2]).
placar(17, [2,0]).
placar(18, [0,0]).
placar(19, [2,1]).
placar(20, [3,1]).
placar(21, [4,2]).
placar(22, [3,1]).
placar(23, [2,0]).
placar(24, [1,3]).
placar(25, [1,3]).
placar(26, [4,2]).
placar(27, [3,1]).
placar(28, [4,1]).
placar(29, [3,0]).
placar(30, [1,0]).
placar(31, [2,1]).
placar(32, [0,2]).
placar(33, [0,1]).
placar(34, [1,1]).
placar(35, [0,0]).
placar(36, [1,0]).
placar(37, [3,0]).
placar(38, [0,0]).
placar(39, [3,1]).
placar(40, [2,1]).
placar(41, [2,1]).
placar(42, [4,1]).
placar(43, [4,0]).
placar(44, [3,1]).
placar(45, [2,3]).
placar(46, [1,0]).
placar(47, [1,0]).
placar(48, [3,0]).
placar(49, [4,0]).
placar(50, [4,3]).
placar(51, [1,1]).
placar(52, [1,0]).
placar(53, [1,2]).
placar(54, [4,1]).
placar(55, [3,2]).
placar(56, [1,1]).
placar(57, [0,3]).
placar(58, [2,1]).
placar(59, [1,0]).
placar(60, [3,0]).
placar(61, [0,1]).
placar(62, [2,1]).
placar(63, [3,1]).
placar(64, [0,0]).
placar(65, [3,0]).
placar(66, [1,2]).
placar(67, [3,1]).
placar(68, [0,0]).
placar(69, [4,1]).
placar(70, [2,1]).
placar(71, [1,7]).
placar(72, [0,3]).
placar(73, [1,1]).
placar(74, [2,0]).
placar(75, [2,0]).
placar(76, [1,2]).