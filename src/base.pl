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

/* maioresjogadores(JOGADOR, SELECAO) */
maioresjogadores(pele, brasil).
maioresjogadores(garrincha, brasil).
maioresjogadores(vava, brasil).
maioresjogadores(ronaldo, brasil).
maioresjogadores(rivaldo, brasil).
maioresjogadores(romario, brasil).
maioresjogadores(ronaldinhogaucho, brasil).
maioresjogadores(rivellino, brasil).
maioresjogadores(zico, brasil).
maioresjogadores(jairizinho, brasil).
maioresjogadores(ademirdemenezes, brasil).
maioresjogadores(leonidasdasilva, brasil).
maioresjogadores(zagallo, brasil).
maioresjogadores(carlosalberto, brasil).
maioresjogadores(robertocarlos, brasil).
maioresjogadores(tostao, brasil).
maioresjogadores(didi, brasil).
maioresjogadores(bellini, brasil).
maioresjogadores(bebeto, brasil).

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

/*participou(seleção, competição, ano)*/
participou(brasil, copa_do_mundo, 1930).
participou(brasil, copa_do_mundo, 1934).
participou(brasil, copa_do_mundo, 1938).
participou(brasil, copa_do_mundo, 1950).
participou(brasil, copa_do_mundo, 1954).
participou(brasil, copa_do_mundo, 1958).
participou(brasil, copa_do_mundo, 1962).
participou(brasil, copa_do_mundo, 1966).
participou(brasil, copa_do_mundo, 1970).
participou(brasil, copa_do_mundo, 1974).
participou(brasil, copa_do_mundo, 1978).
participou(brasil, copa_do_mundo, 1982).
participou(brasil, copa_do_mundo, 1986).
participou(brasil, copa_do_mundo, 1990).
participou(brasil, copa_do_mundo, 1994).
participou(brasil, copa_do_mundo, 1998).
participou(brasil, copa_do_mundo, 2002).
participou(brasil, copa_do_mundo, 2006).
participou(brasil, copa_do_mundo, 2010).
participou(brasil, copa_do_mundo, 2014).
participou(brasil, copa_do_mundo, 2018).

participou(espanha, copa_do_mundo, 1934).
participou(suecia, copa_do_mundo, 1938).
participou(suecia, copa_do_mundo, 1950).
participou(espanha, copa_do_mundo, 1950).
participou(hungria, copa_do_mundo, 1954).
participou(inglaterra, copa_do_mundo, 1958).
participou(inglaterra, copa_do_mundo, 1962).
participou(hungria, copa_do_mundo, 1966).
participou(portugal, copa_do_mundo, 1966).
participou(alemanha, copa_do_mundo, 1966).
participou(uruguai, copa_do_mundo, 1970).
participou(italia, copa_do_mundo, 1970).
participou(argentina, copa_do_mundo, 1974).
participou(holanda, copa_do_mundo, 1974).
participou(suecia, copa_do_mundo, 1978).
participou(espanha, copa_do_mundo, 1978).
participou(argentina, copa_do_mundo, 1982).
participou(franca, copa_do_mundo, 1982).
participou(alemanha, copa_do_mundo, 1982).
participou(espanha, copa_do_mundo, 1986).
participou(franca, copa_do_mundo, 1986).
participou(argentina, copa_do_mundo, 1990).
participou(suecia, copa_do_mundo, 1994).
participou(holanda, copa_do_mundo, 1994).
participou(italia, copa_do_mundo, 1994).
participou(holanda, copa_do_mundo, 1998).
participou(inglaterra, copa_do_mundo, 2002).
participou(alemanha, copa_do_mundo, 2002).
participou(franca, copa_do_mundo, 2006).
participou(inglaterra, copa_do_mundo, 2006).
participou(holanda, copa_do_mundo, 2010).
participou(portugal, copa_do_mundo, 2010).
participou(holanda, copa_do_mundo, 2014).
participou(argentina, copa_do_mundo, 2014).
participou(argentina, copa_do_mundo, 2018).
participou(inglaterra, copa_do_mundo, 2018).
participou(alemanha, copa_do_mundo, 2018).

/*se uma seleção venceu uma competição entao ela participou da mesma*/
r_participou(SELECAO, COMPETICAO, ANO) :- participou(SELECAO, COMPETICAO, ANO), !; venceu(SELECAO, COMPETICAO, ANO).

todas_copas(SELECAO) :- aggregate_all(count, participou(SELECAO, copa_do_mundo, _), Count), Count = 21.

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
eliminado_por(brasil, iugoslavia, copa-do-mundo, 1930).
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


/*lista de tecnicos*/
treinador(vicente_feola).

%lista de patrocinadores
patrocinador(itau, 2008, 2022).
patrocinador(vivo, 2005, 2023).
patrocinador(guarana_antartica, 2001, 2019).
patrocinador(mastercard, 2012, 2020).
patrocinador(gol, 2013, 2021).
patrocinador(ultrafarma, 2015, 2045).
patrocinador(cimed, 2016, 2023).
patrocinador(semp, 2019, 2022).
patrocinador(nike, 1996, 2018).

patrocina(MARCA, ANO) :- patrocinador(MARCA, INI, FIM), ANO >= INI, ANO =< FIM.

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



