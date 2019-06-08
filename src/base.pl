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
maioresjogadores(pele, brasil)
maioresjogadores(garrinhca, brasil)
maioresjogadores(vava, brasil).
maioresjogadores(ronaldo, brasil).
maioresjogadores(rivaldo, brasil).
maioresjogadores(romario, brasil).
maioresjogadores(ronaldinhogaucho, brasil).
maioresjogadores(rivellino, brasil).
maioresjogadores(zico, brasil).
maioresjogadores(jairizinho, brasil).
maioresjogadores(ademirdemenezes, brasil).
maioresjogadores(leonidasdasilva, brasil)
maioresjogadores(zagallo, brasil).
maioresjogadores(carlosalberto, brasil).
maioresjogadores(robertocarlos, brasil).
maioresjogadores(tostao, brasil).
maioresjogadores(didi, brasil).
maioresjogadores(bellini, brasil).
maioresjogadores(bebeto, brasil).

/*jogadores que ganharam o titulo de melhor do mundo*/
/*melhordomundo(JOGADOR, ANO).*/
melhordomundo(romario, 1994).
melhordomundo(ronaldo, 1996).
melhordomundo(ronaldo, 1997).
melhordomundo(ronaldo, 2002).
melhordomundo(ronaldinhogaucho, 2004).
melhordomundo(ronaldinhogaucho, 2005).
melhordomundo(kaka, 2007).

/*rival(SELECAO)*/
rival(argentina).
rival(uruguai).
rival(alemanha).
rival(italia).
rival(franca).

/*participou(seleção, competição, ano)*/
participou(brasil, copadomundo, 1930).
participou(brasil, copadomundo, 1934).
participou(brasil, copadomundo, 1938).
participou(brasil, copadomundo, 1950).
participou(brasil, copadomundo, 1954).
participou(brasil, copadomundo, 1958).
participou(brasil, copadomundo, 1962).
participou(brasil, copadomundo, 1966).
participou(brasil, copadomundo, 1970).
participou(brasil, copadomundo, 1974).
participou(brasil, copadomundo, 1978).
participou(brasil, copadomundo, 1982).
participou(brasil, copadomundo, 1986).
participou(brasil, copadomundo, 1990).
participou(brasil, copadomundo, 1994).
participou(brasil, copadomundo, 1998).
participou(brasil, copadomundo, 2002).
participou(brasil, copadomundo, 2006).
participou(brasil, copadomundo, 2010).
participou(brasil, copadomundo, 2014).
participou(brasil, copadomundo, 2018).

participou(espanha, copadomundo, 1934).
participou(suecia, copadomundo, 1938).
participou(suecia, copadomundo, 1950).
participou(espanha, copadomundo, 1950).
participou(hungria, copadomundo, 1954).
participou(inglaterra, copadomundo, 1958).
participou(inglaterra, copadomundo, 1962).
participou(hungria, copadomundo, 1966).
participou(portugal, copadomundo, 1966).
participou(alemanha, copadomundo, 1966).
participou(uruguai, copadomundo, 1970).
participou(italia, copadomundo, 1970).
participou(argentina, copadomundo, 1974).
participou(holanda, copadomundo, 1974).
participou(suecia, copadomundo, 1978).
participou(espanha, copadomundo, 1978).
participou(argentina, copadomundo, 1982).
participou(franca, copadomundo, 1982).
participou(alemanha, copadomundo, 1982).
participou(espanha, copadomundo, 1986).
participou(franca, copadomundo, 1986).
participou(argentina, copadomundo, 1990).
participou(suecia, copadomundo, 1994).
participou(holanda, copadomundo, 1994).
participou(italia, copadomundo, 1994).
participou(holanda, copadomundo, 1998).
participou(inglaterra, copadomundo, 2002).
participou(alemanha, copadomundo, 2002).
participou(franca, copadomundo, 2006).
participou(inglaterra, copadomundo, 2006).
participou(holanda, copadomundo, 2010).
participou(portugal, copadomundo, 2010).
participou(holanda, copadomundo, 2014).
participou(argentina, copadomundo, 2014).
participou(argentina, copadomundo, 2018).
participou(inglaterra, copadomundo, 2018).
participou(alemanha, copadomundo, 2018).

/* sede(COMPETICAO, ANO, LOCAL) */
sede(copadomundo, 1930, uruguai).
sede(copadomundo, 1934, italia).
sede(copadomundo, 1938, franca).
sede(copadomundo, 1950, brasil).
sede(copadomundo, 1954, suica).
sede(copadomundo, 1958, suecia).
sede(copadomundo, 1962, chile).
sede(copadomundo, 1966, inglaterra).
sede(copadomundo, 1970, mexico).
sede(copadomundo, 1974, alemanha).
sede(copadomundo, 1978, argentina).
sede(copadomundo, 1982, espanha).
sede(copadomundo, 1986, mexico).
sede(copadomundo, 1990, italia).
sede(copadomundo, 1994, eua).
sede(copadomundo, 1998, franca).
sede(copadomundo, 2002, coreiadosul).
sede(copadomundo, 2002, japao).
sede(copadomundo, 2006, alemanha).
sede(copadomundo, 2010, africadosul).
sede(copadomundo, 2014, brasil).
sede(copadomundo, 2018, russia).

sede(olimpiadas, 2016, riodejaneiro).

/*se uma seleção venceu uma competição entao ela participou da mesma*/
participou(SELECAO, COMPETICAO, ANO) :- venceu(SELECAO, COMPETICAO, ANO).

/*lista de eliminações da seleção brasileira*/
/*eliminadopor(seleção1, seleção2, competição, ano)*/
eliminadopor(brasil, iugoslavia, copadomundo, 1930).
eliminadopor(brasil, espanha, copadomundo, 1934).
eliminadopor(brasil, italia, copadomundo, 1938).
eliminadopor(brasil, uruguai, copadomundo, 1950).
eliminadopor(brasil, hungria, copadomundo, 1954).
eliminadopor(brasil, portugal, copadomundo, 1966).
eliminadopor(brasil, holanda, copadomundo, 1974).
eliminadopor(brasil, argentina, copadomundo, 1978).
eliminadopor(brasil, italia, copadomundo, 1982).
eliminadopor(brasil, franca, copadomundo, 1986).
eliminadopor(brasil, argentina, copadomundo, 1990).
eliminadopor(brasil, franca, copadomundo, 1998).
eliminadopor(brasil, franca, copadomundo, 2006).
eliminadopor(brasil, holanda, copadomundo, 2010).
eliminadopor(brasil, alemanha, copadomundo, 2014).
eliminadopor(brasil, belgica, copadomundo, 2018).

/*venceu(seleção, competição, ano)*/
venceu(uruguai, copadomundo, 1930).
venceu(italia, copadomundo, 1934).
venceu(italia, copadomundo, 1938).
venceu(uruguai, copadomundo, 1950).
venceu(alemanha, copadomundo, 1954).
venceu(brasil, copadomundo, 1958).
venceu(brasil, copadomundo, 1962).
venceu(inglaterra, copadomundo, 1966).
venceu(brasil, copadomundo, 1970).
venceu(alemanha, copadomundo, 1974).
venceu(argentina, copadomundo, 1978).
venceu(italia, copadomundo, 1982).
venceu(argentina, copadomundo, 1986).
venceu(alemanha, copadomundo, 1990).
venceu(brasil, copadomundo, 1994).
venceu(franca, copadomundo, 1998).
venceu(brasil, copadomundo, 2002).
venceu(italia, copadomundo, 2006).
venceu(espanha, copadomundo, 2010).
venceu(alemanha, copadomundo, 2014).
venceu(franca, copadomundo, 2018).

venceu(brasil, copaamerica, 1919).
venceu(brasil, copaamerica, 1922).
venceu(brasil, copaamerica, 1949).
venceu(brasil, copaamerica, 1989).
venceu(brasil, copaamerica, 1997).
venceu(brasil, copaamerica, 1999).
venceu(brasil, copaamerica, 2004).
venceu(brasil, copaamerica, 2007).

venceu(brasil, copadasconfederacoes, 1997).
venceu(brasil, copadasconfederacoes, 2005).
venceu(brasil, copadasconfederacoes, 2009).
venceu(brasil, copadasconfederacoes, 2013).

venceu(brasil, olimpiadas, 2016).

/*se o brasil nao foi eliminado por nenhuma seleção em um determinado ano entao ele venceu a competição*/
/*inutil por enquanto
venceu(brasil, COMPETICAO, ANO) :- not(eliminadopor(brasil, _, COMPETICAO, ANO)).*/

campeaomundial(SELECAO) :- venceu(SELECAO,copadomundo,_).
campeaoolimpico(SELECAO) :- venceu(SELECAO,olimpiadas,_).

octacampeao(SELECAO, COMPETICAO) :- aggregate_all(count, venceu(SELECAO, COMPETICAO, _), Count), Count = 8.
pentacampeao(SELECAO, COMPETICAO) :- aggregate_all(count, venceu(SELECAO, COMPETICAO, _), Count), Count = 5.
tetracampeao(SELECAO, COMPETICAO) :- aggregate_all(count, venceu(SELECAO, COMPETICAO, _), Count), Count = 4.
tricampeao(SELECAO, COMPETICAO) :- aggregate_all(count, venceu(SELECAO, COMPETICAO, _), Count), Count = 3.
bicampeao(SELECAO, COMPETICAO) :- aggregate_all(count, venceu(SELECAO, COMPETICAO, _), Count), Count = 2.

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



