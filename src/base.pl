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

/*se o brasil nao foi eliminado por nenhuma seleção em um determinado ano entao ele venceu a competição*/
/*inutil por enquanto
venceu(brasil, COMPETICAO, ANO) :- not(eliminado_por(brasil, _, COMPETICAO, ANO)).*/

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

/*jogo(id_jogo, ano)*/
jogo(1, 1930).
jogo(2, 1934).
jogo(3, 1938).
jogo(4, 1938).
jogo(5, 1938).
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
jogou(40, 1982).
jogou(41, 1982).
jogou(42, 1982).
jogou(43, 1982).
jogou(44, 1982).
jogou(45, 1986).
jogou(46, 1986).
jogou(47, 1986).
jogou(48, 1986).
jogou(49, 1986).
jogou(50, 1998).
jogou(51, 1998).
jogou(52, 1998).
jogou(53, 2006).
jogou(54, 2006).
jogou(55, 2010).
jogou(56, 2010).
jogou(57, 2010).
jogou(58, 2010).
jogou(59, 2010).
jogou(60, 2014).
jogou(61, 2014).
jogou(62, 2014).
jogou(63, 2014).
jogou(64, 2014).
jogou(65, 2018).
jogou(66, 2018).
jogou(67, 2018).
jogou(68, 2018).

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
contra(24, Hungria).
contra(25, Portugal).
contra(26, Peru).
contra(27, Uruguai).
contra(28, Italia).
contra(29, Zaire).
contra(30, Alemanha Oriental).
contra(31, Argentina).
contra(32, Holanda).
contra(33, Polônia).
contra(34, Suécia).
contra(35, Espanha).
contra(36, Áustria).
contra(37, Peru).
contra(38, Argentina).
contra(39, Polônia).
contra(40, União Soviética).
contra(41, Escócia).
contra(42, Nova Zelândia).
contra(43, Argentina).
contra(44, Italia).
contra(45, Espanha).
contra(46, Argélia).
contra(47, Irlanda do Norte).
contra(48, Polônia).
contra(49, França).
contra(50, Noruega).
contra(51, Chile).
contra(52, Dinamarca).
contra(53, Gana).
contra(54, França).
contra(55, Coreia do Norte).
contra(56, Costa do Marfim).
contra(57, Portugal).
contra(58, Chile).
contra(59, Países Baixos).
contra(60, Croácia).
contra(61, México).
contra(62, Camarões).
contra(63, Colômbia).
contra(64, Alemanha).
contra(65, Suíça).
contra(66, Sérvia).
contra(67, México).
contra(68, Bélgica).

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
placar(41, [4,1]).
placar(42, [4,0]).
placar(43, [3,1]).
placar(44, [2,3]).
placar(45, [1,0]).
placar(46, [1,0]).
placar(47, [3,0]).
placar(48, [4,0]).
placar(49, [4,3]).
placar(50, [1,2]).
placar(51, [4,1]).
placar(52, [3,2]).
placar(53, [3,0]).
placar(54, [0,1]).
placar(55, [2,1]).
placar(56, [3,1]).
placar(57, [0,0]).
placar(58, [3,0]).
placar(59, [1,2]).
placar(60, [3,1]).
placar(61, [0,0]).
placar(62, [4,1]).
placar(63, [2,1]).
placar(64, [1,7]).
placar(65, [1,1]).
placar(66, [2,0]).
placar(67, [2,0]).
placar(68, [2,1]).

/*(seleção1, gols1, gols2, seleção2, competição, ano).*/

jogou(brasil, 5, 2, suecia, copa_do_mundo, 1958).
jogou(brasil, 0, 0, tchecoslovaquia, copa_do_mundo, 1962).
jogou(brasil, 3, 1, tchecoslovaquia, copa_do_mundo, 1962).
jogou(brasil, 1, 3, hungria, copa_do_mundo, 1966).
jogou(brasil, 1, 3, portugal, copa_do_mundo, 1966).
jogou(brasil, 4, 1, italia, copa_do_mundo, 1970).
jogou(brasil, 0, 2, holanda, copa_do_mundo, 1974).
jogou(brasil, 0, 1, polonia, copa_do_mundo, 1974).
jogou(brasil, 2, 1, italia, copa_do_mundo, 1978).
jogou(brasil, 1, 1, suecia, copa_do_mundo, 1994).
jogou(brasil, 1, 0, suecia, copa_do_mundo, 1994).
jogou(brasil, 1, 2, noruega, copa_do_mundo, 1998).
jogou(brasil, 0, 3, franca, copa_do_mundo, 1998).
jogou(brasil, 2, 1, turquia, copa_do_mundo, 2002).
jogou(brasil, 1, 0, turquia, copa_do_mundo, 2002).
jogou(brasil, 1, 7, alemanha, copa_do_mundo, 2014).
jogou(brasil, 0, 3, holanda, copa_do_mundo, 2014).
jogou(brasil, 0, 6, uruguai, copa_america, 1920).


/*serie sem derrota(jogos,desde,ultima_derrota,ate,fim_da_sequencia)*/
sem_derrota(13, 1954, hungria, 1966, hungria).
sem_derrota(11, 1966, portugal, 1974, holanda).
sem_derrota(11, 1974, polonia, 2082, italia).
sem_derrota(11, 1998, franca, 2006, franca).


/*derrotas na fase de grupos da copa(derrotas,ano)*/
derrota_grupo(2,1966).
derrota_grupo(1,1998).

/*derrotas na estreia copa do mundo(ano,adversario,gols_ad,gols_br)*/
derrrota_estreia(1930, iugoslavia,2,1).
derrrota_estreia(1934, espanha,3,1).

/*empates na estreia copa do mundo(ano,adversario,gols)*/
empate_estreia(1974, iugoslavia,0).
empate_estreia(1978, suecia,1).
empate_estreia(2018, suica,1).

/* copas em que o brasil jogou pelo 3o lugar (ano,adversario, gols_ad, gols_br)*/
disputou_terceiro(1974, polonia, 1, 0).
disputou_terceiro(1978, italia, 1, 2).
