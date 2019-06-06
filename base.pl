%Dados Gerais
nome(brasil, "Seleção Brasileira de Futebol").
associacao(brasil, cbf).
confederacao(brasil, conmebol).
apelido(brasil, "Seleção Canarinho").

%selecao(país)
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

%Fatos

%participou(seleção, competição, ano)
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
participou(espanha, copadomundo, 1950).
participou(suecia, copadomundo, 1938).
participou(suecia, copadomundo, 1950).
participou(hungria, copadomundo, 1954).
participou(hungria, copadomundo, 1966).
participou(inglaterra, copadomundo, 1958).
participou(inglaterra, copadomundo, 1962).
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


%se uma selecão ganhou uma competição entao ela participou da mesma
participou(SELECAO, COMPETICAO, ANO) :- ganhou(SELECAO, COMPETICAO, ANO).

%venceu(seleção, competição, ano)
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

venceu(brasil, copadasamericas, 1919).
venceu(brasil, copadasamericas, 1922).
venceu(brasil, copadasamericas, 1949).
venceu(brasil, copadasamericas, 1989).
venceu(brasil, copadasamericas, 1997).
venceu(brasil, copadasamericas, 1999).
venceu(brasil, copadasamericas, 2004).
venceu(brasil, copadasamericas, 2007).

venceu(brasil, copadasconfederacoes, 1997).
venceu(brasil, copadasconfederacoes, 2005).
venceu(brasil, copadasconfederacoes, 2009).
venceu(brasil, copadasconfederacoes, 2013).

venceu(brasil, olimpiadas, 2016).

artilheiros(pele, 77).
artilheiros(ronaldo, 67).
artilheiros(zico, 66).
artilheiros(neymar, 59).
artilheiros(romario, 55).
artilheiros(jairizinho, 44).
artilheiros(rivelino, 43).
artilheiros(bebeto, 39).
artilheiros(rivaldo, 37).



