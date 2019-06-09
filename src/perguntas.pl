?- selecao(brasil).



/*copas em que brasil enfrentou 2x o mesmo adversario(adversario, ano)*/
duas_vezes(tchecoslovaquia, 1938).
duas_vezes(tchecoslovaquia, 1962).
duas_vezes(suecia, 1994).
duas_vezes(turquia, 2002).




/*copas que o brasil for derrotado 2x(ano, prim_adversario, gols_prim, gols_br, sec_adversario, gols_sec, gols_br)*/
copa_derrotado_dois(1966, hungria,3,1,portugal,3,1).
copa_derrotado_dois(1974, holanda,2,0,polonia1,1,0).
copa_derrotado_dois(1998, noruega,2,1,franca,3,0).
copa_derrotado_dois(2014, alemanha,7,1,holanda,3,0).


/*finais com diferenca de gols 3 que o brasil participou(adversario,adversario_gols,brasil_gols,ano)*/
final_dif_tres(suecia,2,5,1958).
final_dif_tres(italia,1,4,1970).
final_dif_tres(franca,3,0,1998).