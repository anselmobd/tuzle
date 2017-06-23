select * from hist_010
 where ordem_producao = 851
   and usuario_rede = 'LUIZ_IND'
   and nome_programa = 'obrf_f401'
   and trunc(data_ocorr,'dd') = '20-jun-17'
;

--

INSERT INTO SYSTEXTIL.PCPC_040
(PERIODO_PRODUCAO, ORDEM_CONFECCAO, CODIGO_ESTAGIO, PROCONF_NIVEL99, PROCONF_GRUPO, PROCONF_SUBGRUPO, PROCONF_ITEM, QTDE_PECAS_PROG, QTDE_PECAS_PROD, QTDE_CONSERTO, QTDE_PECAS_2A, ESTAGIO_ANTERIOR, SITUACAO_ORDEM, NUMERO_ORDEM, SEQ_ORDEM_SERV, DIV_PROD_INT, ORDEM_PRODUCAO, QTDE_PERDAS, QTDE_PROGRAMADA, SEQUENCIA_ESTAGIO, ESTAGIO_DEPENDE, USUARIO, CODIGO_FAMILIA, POSICAO_FILA, POSICAO_FILA_MANUAL, SEQ_OPERACAO, DATA_PREV_INICIO, QTDE_PESSOAS_PREV, CODIGO_BALANCEIO, NUM_PACOTE_I, NUM_PACOTE_F, NUMERO_ID_TMRP_650, EXPORTADO_PMS, EXECUTA_TRIGGER, SEQUENCIA_ENFESTO, EXCLUI_PACOTE, SEQ_QUEBRA, DATA_ALTERACAO, QTDE_EM_PRODUCAO_PACOTE, QTDE_A_PRODUZIR_PACOTE, QTDE_DISPONIVEL_BAIXA, SITUACAO_EM_PROD_A_PROD, QTDE_PECAS_PROD_RECALC, QTDE_CONSERTO_RECALC, QTDE_PECAS_2A_RECALC, QTDE_PERDAS_RECALC, NOME_PROGRAMA_CRIACAO, NOME_PROGRAMA, CODIGO_EMPRESA)
VALUES(1724, 9157, 39, '1', 'M251R', 'GG', '0000VM', 36, 0, 0, 0, 24, 2, 0, 0, 0, 851, 0, 36, 7, 0, NULL, 0, 999999, 0, 80, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, 36, 0, 1, NULL, NULL, NULL, NULL, 'pcpc_f310', 'obrf_f484', 1);

--

SELECT
  l.PERIODO_PRODUCAO
, l.ORDEM_CONFECCAO
, l.CODIGO_ESTAGIO
, l.CODIGO_EMPRESA
, l.*
FROM PCPC_040 l
WHERE l.PERIODO_PRODUCAO = 1724
  AND l.ORDEM_CONFECCAO = 9157
  AND l.CODIGO_ESTAGIO = 39
;
--PRODUTO: 1.M251R.GG.0000VM
--CÓDIGO ESTÁGIO: 39
--NÚMERO DA ORDEM: 343->0
--SEQ. ORDEM SERV: 7->0

--

DELETE FROM PCPC_040 l
WHERE l.PERIODO_PRODUCAO = 1724
  AND l.ORDEM_CONFECCAO = 9157
  AND l.CODIGO_ESTAGIO = 39
;

--

172408628
172408629
172408630
172408631
172408632
172408633
172408634
172408635
172408636
172408637
172408639
172408640
172408641
172408642
172408625
172408626
172408627
172408643
172408644
172408645
172408646
172408647
172408648
172408649
172408650
172408651
172408652
172408653
172408654
172408655
172408921
172408922
172408925
172408926
172408927
172408928
172408929
172408930
172408931
172408932
172408933
172408934
172408935
172408936
172408937
172408938
172408939
172408940
172408941
172408942
172408943
172408944
172408945
172408946
172408948
172408949
172408950
172408951
172408952
172408953
172408954
172408955
172408956
172408957
172408958
172408959
172408960
172408961
172408409
172408410
172408411
172408412
172408413
172408414
172408415
172408416
172408417
172408418
172408419
172408420
172409165
172409166
172409163
172409167
172409168
172409169
172409170
172409172
172409173
172409174
172409175
172409176
172409158
172409159
172409162
172409150
172409151
172409152
172409153
172409154
172409155
