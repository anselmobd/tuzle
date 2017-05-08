-- estudando cadastro de ref+tam EG

SELECT *
FROM BASI_020 pt
WHERE pt.TAMANHO_REF = 'EG'
  AND pt.BASI030_NIVEL030 = 1
;

SELECT
  *
FROM BASI_020 pt
WHERE pt.TAMANHO_REF = 'EG'
  AND pt.BASI030_NIVEL030 = 1
  AND NOT EXISTS (
	SELECT
	  pt2.BASI030_REFERENC
	FROM BASI_020 pt2
	WHERE pt2.BASI030_REFERENC = pt.BASI030_REFERENC
	  AND pt2.TAMANHO_REF = 'PP'
	  AND pt2.BASI030_NIVEL030 = 1
  )
;

-- copiando ref+tam EG para PP

INSERT INTO SYSTEXTIL.BASI_020
(BASI030_NIVEL030, BASI030_REFERENC, TAMANHO_REF, DESCR_TAM_REFER, LOTE_FABR_PECAS, PESO_LIQUIDO, QTDE_MAX_ENFESTO, COMP_MAX_ENFESTO, COMPOSICAO_01, COMPOSICAO_02, COMPOSICAO_03, COMPOSICAO_04, COMPOSICAO_05, LARGURA_1, LARGURA_2, GRAMATURA_1, GRAMATURA_2, GRAMATURA_3, PESO_ROLO, TIPO_PRODUTO, AVALIACAO_TOQUE, CLASSE_FIO, COLUNAS_CRUS, CURSOS, ELASTICIDADE_ACA, ELASTICIDADE_CRU, ENCO_COMPRIMENTO, ENCO_LARGURA, FATOR_COBERTURA, GRAU_COMPACTACAO, KIT_ELASTANO, MERCERIZADO, NR_ALIMENTADORES, NUMERO_AGULHAS, PERC_COMPOSICAO1, PERC_COMPOSICAO2, PERC_COMPOSICAO3, PERC_COMPOSICAO4, PERC_COMPOSICAO5, PERC_PERDAS, PERC_UMIDADE, RELACH_COMPRIMEN, RELACH_LARGURA, RENDIMENTO, TEMPERATURA_ESTP, TEMPERATURA_FIXA, TEMPO_FIXACAO, TEMPO_TERMOFIXAR, TERMOFIXAR, TITULO_FIO, TORCAO_ACABADO, TORCAO_CRU, TUBULAR_ABERTO, VARIACAO_FIO, FATOR, IND_MT_MINUTOS, IND_KG_MAQ_DIA, IND_EFICIENCIA, NE_TITULO, PROCESSO_UNICO_TEC, GRAMATURA_VAPORIZADO, ARTIGO_COTAS, COD_PROCESSO, GRADE_DISTRIBUICAO, LARGURA_SAIDA_MAQUINA, GRAMATURA_SAIDA_MAQUINA, CURSOS_SAIDA_MAQUINA, COLUNAS_SAIDA_MAQUINA, LARGURA_APOS_REPOUSO, GRAMATURA_APOS_REPOUSO, CURSOS_APOS_REPOUSO, COLUNAS_APOS_REPOUSO, LARGURA_ERCRU, GRAMATURA_ERCRU, CURSOS_ERCRU, COLUNAS_ERCRU, LARGURA_VAPORIZADO, GRAMAT_VAPORIZADO, CURSOS_VAPORIZADO, COLUNAS_VAPORIZADO, PERC_VARIACAO_GRAMATURA, TAM_PONTO_1, TAM_PONTO_2, TAM_PONTO_3, TAM_PONTO_4, NE_TITULO_2, NE_TITULO_3, NE_TITULO_4, LFA_1, LFA_2, LFA_3, LFA_4, TEAR_FINURA, TEAR_DIAMETRO, PERC_ALT_DIM_COMP, PERC_ALT_DIM_LARG, LARGURA_PROJ, GRAMATURA_PROJ, LARG_VAR_INI, LARG_VAR_FIM, GAR_VAR_INI, GAR_VAR_FIM, CURSOS_VAR_INI, CURSOS_VAR_FIM, COLUNAS_VAR_INI, COLUNAS_VAR_FIM, AD_COMP_VAR_INI, AD_COMP_VAR_FIM, AD_LARG_VAR_INI, AD_LARG_VAR_FIM, ELASTIC_VAR_INI, ELASTIC_VAR_FIM, ALONG_VAR_INI, ALONG_VAR_FIM, TORCAO_ACA_VAR_INI, TORCAO_ACA_VAR_FIM, TIPO_RETORNO, PERC_VAR_LARGURA, PERC_VAR_COMPR, NE_TITULO_1, ALONGAMENTO, GRUPO_AGRUPADOR, SUB_AGRUPADOR, TIPO_HOMOLOGACAO, NRO_ETIQS_HOMOLOGACAO, SOLIDEZ_LAVACAO, SOL_LAVACAO_INI, SOL_LAVACAO_FIM, SOLIDEZ_SUOR, SOL_SUOR_INI, SOL_SUOR_FIM, SOLIDEZ_AGUA_CLORADA, SOL_AGUA_CLORADA_INI, SOL_AGUA_CLORADA_FIM, SOLIDEZ_AGUA_MAR, SOL_AGUA_MAR_INI, SOL_AGUA_MAR_FIM, SOLIDEZ_FRICCAO_SECO, SOL_FRICCAO_SECO_INI, SOL_FRICCAO_SECO_FIM, SOLIDEZ_FRICCAO_UMIDO, SOL_FRICCAO_UMIDO_INI, SOL_FRICCAO_UMIDO_FIM, METROS_LINEARES, METROS_CUBICOS, AGULHAS_FALHADAS, NUM_AGULHAS_FALHADAS, NUMERO_PONTOS, POLEGADAS_AGULHA, PESO_MINI_ROLO, COMPOS_COMER01, COMPOS_COMER02, COMPOS_COMER03, COMPOS_COMER04, DESCR_ING, DESCR_ING2, DESCR_ESP, COMPOS_ING1, COMPOS_ING2, COMPOS_ING3, COMPOS_ING4, COMPOS_ESP1, COMPOS_ESP2, COMPOS_ESP3, COMPOS_ESP4, OBSERVACAO, OBS_ING, OBS_ESP, GRAMATURA_PRE_ESTAMPADO, PESO_ROLO_PRE_ESTAMPADO, LARGURA_PRE_ESTAMPADO, COMPRIM_PRE_ESTAMPADO, PERDAS_PRE_ESTAMPADO, LIMITE_FALHAS_ROLO, LIMITE_FALHAS_MINI, TATO, REFERENCIA_ORIGEM, CONSUMO_PASTA_NORMAL, LARGURA_CILINDRO, LARGURA_ESTAMPA, COMPOS_ING5, COMPOS_ESP5, COMPOS_COMER05, COD_FLUXO, PERDAS_ANTES_TINGIMENTO, PESO_MULTIPLO, TEM_DEP_ROLO, TEM_DEP_MINI_ROLO, TEM_DEP_ESTAMPARIA, COMPOSICAO_06, PERC_COMPOSICAO6, DIAMETRO, GRUPO_ENCOLHIMENTO, HOMOLOGACAO_FORNEC, LITROS_ABSORCAO, NR_ROLOS_CUBAGEM, DESCR_MARCA_REG, CODIGO_EMBALAGEM, DESC_TAM_FICHA, COMPRIMENTO_MINI, CARACT, CARACT_ING, CARACT_ESP, PERC_DIFER_PESO, SEQUENCIA_TAMANHO, RAPORT, NUM_DESENVOLVIMENTO, ALTERNATIVA_PADRAO, ROTEIRO_PADRAO, PESO_QUEBRA, GRUPO_TECIDO_COSTURAR, BATIDAS_POLEGADAS, PERC_RETRACAO, ORDEM_COMPRA, TIPO_PRODUTO_GLOBAL, BATIDAS_METRO, CODIGO_PENTE, DENSIDADE_PENTE, QTDE_FIOS, QTDE_FIOS_FUNDO, QTDE_FIOS_OURELA, PERC_ENCOLHIMENTO, PASSAMENTO_FUNDO, PASSAMENTO_OURELA, PUAS_FUNDO, PUAS_OURELA, LARGURA_PENTE, CONTRACAO_URDUME, CONTRACAO_TRAMA, OZ_YD2, COR_ETIQUETA, LINHA_PRODUCAO, TITULO_FIBRA, UM_TITULO_FIBRA, SIMBOLO_1, SIMBOLO_2, SIMBOLO_3, SIMBOLO_4, SIMBOLO_5, COD_TOLER_RENDIM, ALTURA_1, ALTURA_2, CURSOS_CENTIMETROS, TAMANHO_RETILINEA, DIAS_ARMAZENAMENTO, PESO_MEDIO_CONE, GRUPO_TECIDO_CORTAR, PERMITE_MISTURAR_MAQUINA, UN_MED_TITULO_FIO, LARGURA_PF_1, LARGURA_PF_2, ALTURA_PF_1, ALTURA_PF_2, COMPRI_PLOTAGEM)
SELECT
BASI030_NIVEL030, BASI030_REFERENC, 'PP', DESCR_TAM_REFER, LOTE_FABR_PECAS, PESO_LIQUIDO, QTDE_MAX_ENFESTO, COMP_MAX_ENFESTO, COMPOSICAO_01, COMPOSICAO_02, COMPOSICAO_03, COMPOSICAO_04, COMPOSICAO_05, LARGURA_1, LARGURA_2, GRAMATURA_1, GRAMATURA_2, GRAMATURA_3, PESO_ROLO, TIPO_PRODUTO, AVALIACAO_TOQUE, CLASSE_FIO, COLUNAS_CRUS, CURSOS, ELASTICIDADE_ACA, ELASTICIDADE_CRU, ENCO_COMPRIMENTO, ENCO_LARGURA, FATOR_COBERTURA, GRAU_COMPACTACAO, KIT_ELASTANO, MERCERIZADO, NR_ALIMENTADORES, NUMERO_AGULHAS, PERC_COMPOSICAO1, PERC_COMPOSICAO2, PERC_COMPOSICAO3, PERC_COMPOSICAO4, PERC_COMPOSICAO5, PERC_PERDAS, PERC_UMIDADE, RELACH_COMPRIMEN, RELACH_LARGURA, RENDIMENTO, TEMPERATURA_ESTP, TEMPERATURA_FIXA, TEMPO_FIXACAO, TEMPO_TERMOFIXAR, TERMOFIXAR, TITULO_FIO, TORCAO_ACABADO, TORCAO_CRU, TUBULAR_ABERTO, VARIACAO_FIO, FATOR, IND_MT_MINUTOS, IND_KG_MAQ_DIA, IND_EFICIENCIA, NE_TITULO, PROCESSO_UNICO_TEC, GRAMATURA_VAPORIZADO, ARTIGO_COTAS, COD_PROCESSO, GRADE_DISTRIBUICAO, LARGURA_SAIDA_MAQUINA, GRAMATURA_SAIDA_MAQUINA, CURSOS_SAIDA_MAQUINA, COLUNAS_SAIDA_MAQUINA, LARGURA_APOS_REPOUSO, GRAMATURA_APOS_REPOUSO, CURSOS_APOS_REPOUSO, COLUNAS_APOS_REPOUSO, LARGURA_ERCRU, GRAMATURA_ERCRU, CURSOS_ERCRU, COLUNAS_ERCRU, LARGURA_VAPORIZADO, GRAMAT_VAPORIZADO, CURSOS_VAPORIZADO, COLUNAS_VAPORIZADO, PERC_VARIACAO_GRAMATURA, TAM_PONTO_1, TAM_PONTO_2, TAM_PONTO_3, TAM_PONTO_4, NE_TITULO_2, NE_TITULO_3, NE_TITULO_4, LFA_1, LFA_2, LFA_3, LFA_4, TEAR_FINURA, TEAR_DIAMETRO, PERC_ALT_DIM_COMP, PERC_ALT_DIM_LARG, LARGURA_PROJ, GRAMATURA_PROJ, LARG_VAR_INI, LARG_VAR_FIM, GAR_VAR_INI, GAR_VAR_FIM, CURSOS_VAR_INI, CURSOS_VAR_FIM, COLUNAS_VAR_INI, COLUNAS_VAR_FIM, AD_COMP_VAR_INI, AD_COMP_VAR_FIM, AD_LARG_VAR_INI, AD_LARG_VAR_FIM, ELASTIC_VAR_INI, ELASTIC_VAR_FIM, ALONG_VAR_INI, ALONG_VAR_FIM, TORCAO_ACA_VAR_INI, TORCAO_ACA_VAR_FIM, TIPO_RETORNO, PERC_VAR_LARGURA, PERC_VAR_COMPR, NE_TITULO_1, ALONGAMENTO, GRUPO_AGRUPADOR, SUB_AGRUPADOR, TIPO_HOMOLOGACAO, NRO_ETIQS_HOMOLOGACAO, SOLIDEZ_LAVACAO, SOL_LAVACAO_INI, SOL_LAVACAO_FIM, SOLIDEZ_SUOR, SOL_SUOR_INI, SOL_SUOR_FIM, SOLIDEZ_AGUA_CLORADA, SOL_AGUA_CLORADA_INI, SOL_AGUA_CLORADA_FIM, SOLIDEZ_AGUA_MAR, SOL_AGUA_MAR_INI, SOL_AGUA_MAR_FIM, SOLIDEZ_FRICCAO_SECO, SOL_FRICCAO_SECO_INI, SOL_FRICCAO_SECO_FIM, SOLIDEZ_FRICCAO_UMIDO, SOL_FRICCAO_UMIDO_INI, SOL_FRICCAO_UMIDO_FIM, METROS_LINEARES, METROS_CUBICOS, AGULHAS_FALHADAS, NUM_AGULHAS_FALHADAS, NUMERO_PONTOS, POLEGADAS_AGULHA, PESO_MINI_ROLO, COMPOS_COMER01, COMPOS_COMER02, COMPOS_COMER03, COMPOS_COMER04, DESCR_ING, DESCR_ING2, DESCR_ESP, COMPOS_ING1, COMPOS_ING2, COMPOS_ING3, COMPOS_ING4, COMPOS_ESP1, COMPOS_ESP2, COMPOS_ESP3, COMPOS_ESP4, OBSERVACAO, OBS_ING, OBS_ESP, GRAMATURA_PRE_ESTAMPADO, PESO_ROLO_PRE_ESTAMPADO, LARGURA_PRE_ESTAMPADO, COMPRIM_PRE_ESTAMPADO, PERDAS_PRE_ESTAMPADO, LIMITE_FALHAS_ROLO, LIMITE_FALHAS_MINI, TATO, REFERENCIA_ORIGEM, CONSUMO_PASTA_NORMAL, LARGURA_CILINDRO, LARGURA_ESTAMPA, COMPOS_ING5, COMPOS_ESP5, COMPOS_COMER05, COD_FLUXO, PERDAS_ANTES_TINGIMENTO, PESO_MULTIPLO, TEM_DEP_ROLO, TEM_DEP_MINI_ROLO, TEM_DEP_ESTAMPARIA, COMPOSICAO_06, PERC_COMPOSICAO6, DIAMETRO, GRUPO_ENCOLHIMENTO, HOMOLOGACAO_FORNEC, LITROS_ABSORCAO, NR_ROLOS_CUBAGEM, DESCR_MARCA_REG, CODIGO_EMBALAGEM, DESC_TAM_FICHA, COMPRIMENTO_MINI, CARACT, CARACT_ING, CARACT_ESP, PERC_DIFER_PESO, SEQUENCIA_TAMANHO, RAPORT, NUM_DESENVOLVIMENTO, ALTERNATIVA_PADRAO, ROTEIRO_PADRAO, PESO_QUEBRA, GRUPO_TECIDO_COSTURAR, BATIDAS_POLEGADAS, PERC_RETRACAO, ORDEM_COMPRA, TIPO_PRODUTO_GLOBAL, BATIDAS_METRO, CODIGO_PENTE, DENSIDADE_PENTE, QTDE_FIOS, QTDE_FIOS_FUNDO, QTDE_FIOS_OURELA, PERC_ENCOLHIMENTO, PASSAMENTO_FUNDO, PASSAMENTO_OURELA, PUAS_FUNDO, PUAS_OURELA, LARGURA_PENTE, CONTRACAO_URDUME, CONTRACAO_TRAMA, OZ_YD2, COR_ETIQUETA, LINHA_PRODUCAO, TITULO_FIBRA, UM_TITULO_FIBRA, SIMBOLO_1, SIMBOLO_2, SIMBOLO_3, SIMBOLO_4, SIMBOLO_5, COD_TOLER_RENDIM, ALTURA_1, ALTURA_2, CURSOS_CENTIMETROS, TAMANHO_RETILINEA, DIAS_ARMAZENAMENTO, PESO_MEDIO_CONE, GRUPO_TECIDO_CORTAR, PERMITE_MISTURAR_MAQUINA, UN_MED_TITULO_FIO, LARGURA_PF_1, LARGURA_PF_2, ALTURA_PF_1, ALTURA_PF_2, COMPRI_PLOTAGEM
FROM BASI_020 pt
WHERE pt.TAMANHO_REF = 'EG'
  AND pt.BASI030_NIVEL030 = 1
  AND NOT EXISTS (
	SELECT
	  pt2.BASI030_REFERENC
	FROM BASI_020 pt2
	WHERE pt2.BASI030_REFERENC = pt.BASI030_REFERENC
	  AND pt2.TAMANHO_REF = 'PP'
	  AND pt2.BASI030_NIVEL030 = 1
  )
;

-- estudando cadastro de ref+tam+cor EG

SELECT
  *
FROM BASI_010 ptc
WHERE ptc.SUBGRU_ESTRUTURA = 'EG'
  AND ptc.NIVEL_ESTRUTURA = 1
  AND NOT EXISTS (
	SELECT
	  ptc2.GRUPO_ESTRUTURA
	FROM BASI_010 ptc2
	WHERE ptc2.GRUPO_ESTRUTURA = ptc.GRUPO_ESTRUTURA
	  AND ptc2.ITEM_ESTRUTURA = ptc.ITEM_ESTRUTURA
	  AND ptc2.SUBGRU_ESTRUTURA = 'PP'
	  AND ptc2.NIVEL_ESTRUTURA = 1
  )
;

-- copiando ref+tam+cor EG para PP

INSERT INTO SYSTEXTIL.BASI_010
(NIVEL_ESTRUTURA, GRUPO_ESTRUTURA, SUBGRU_ESTRUTURA, ITEM_ESTRUTURA, DESCRICAO_15, ITEM_ATIVO, CLASSIFIC_FISCAL, CODIGO_VELHO, DATA_CADASTRO, DATA_ULT_COMPRA, DATA_ULT_ENTRADA, DATA_ULT_SAIDA, PRECO_MEDIO, PRECO_ULT_COMPRA, PRECO_CUSTO, PRECO_CUSTO_INFO, PRECO_MEDIO_ANT, ESTOQUE_MINIMO, TEMPO_REPOSICAO, LOTE_MULTIPLO, CONSUMO_MEDIO, NARRATIVA, NARRATIVA_INGLES, NUMERO_ROTEIRO, NUMERO_ALTERNATI, DISTRIBUICAO_COR, CODIGO_BARRAS, IMPRIME_FICHA, TIPO_MAT_PRIMA, QTDE_UPS, QTDE_ELABORACAO, ESTOQUE_MAXIMO, DATA_DESATIVACAO, NARRATIVA2, NATUR_OPERACAO, SUGERE_ITEM, CGC_CLIENTE_2, CGC_CLIENTE_4, CGC_CLIENTE_9, GRAU_SOLIDEZ, NARRATIVA_ESPANHOL, CLASSIFICACAO_NCM, CLASSIFICACAO_NALADI, TIPO_PROD_QUIMICO, NUMERO_GRAFICO, COD_TIPO_VOLUME, ARTIGO_COTAS, GRADE_DISTRIBUICAO, PERC_COR, TAM_PONTO_1, TAM_PONTO_2, TAM_PONTO_3, TAM_PONTO_4, NE_TITULO, NE_TITULO_2, NE_TITULO_3, NE_TITULO_4, LFA_1, LFA_2, LFA_3, LFA_4, TEAR_FINURA, TEAR_DIAMETRO, PERC_ALT_DIM_COMP, PERC_ALT_DIM_LARG, LARGURA_PROJ, NUM_AGULHAS, LARGURA, GRAMATURA, CURSOS, COLUNAS, PERC_PERDAS, FATOR_CORRECAO, GRAMATURA_PROJ, DATA_LANCAMENTO, PONTO_REPOSICAO, TIPO_COR, CODIGO_CLIENTE, QTDE_MIN_VENDA, TONALIDADE, CONCENTRACAO, MOTIVO_USO, COMPLEMENTO, QTDE_MINIMA, SEQUENCIA_TAMANHO, PRECO_CONTRATIPO, NIVEL_ANTIGO, GRUPO_ANTIGO, SUBGRUPO_ANTIGO, ITEM_ANTIGO, ALTERNATIVA_ACABADO, CODIGO_CONTABIL, PRIORIDADE_DISTRIBUICAO, AGRUPADOR_LINHA, ALTERNATIVA_CUSTOS, ROTEIRO_CUSTOS, NR_FIOS_FITA, ITEM_AGRUPADOR, PRODUTO_INTEGRACAO, ESTACAO_DOSAGEM_ORGATEX, IND_ENVIA_INFOTINT, PERC_DETRACCION, CLASSIFICACAO_IBAMA, COD_SERVICO_LST, QTDE_MIN_VENDA_MIN, INTEGRADO_DECISOR, COMBINACAO_PROJETO, DESTINO_PROJETO, FLAG_EXPORTACAO_LOJA, CALC_DISPONIBILIDADE, PESO_UNITARIO, DATA_FIM_DISP, ORIGEM_PROD, TIPO_MOVIMENTACAO, CEST, QTDE_MIN_ENVIO, COD_PRODUTO_INTEGRACAO, FLAG_INTEGRACAO_PROD)
SELECT
NIVEL_ESTRUTURA, GRUPO_ESTRUTURA, 'PP', ITEM_ESTRUTURA, DESCRICAO_15, ITEM_ATIVO, CLASSIFIC_FISCAL, CODIGO_VELHO, DATA_CADASTRO, DATA_ULT_COMPRA, DATA_ULT_ENTRADA, DATA_ULT_SAIDA, PRECO_MEDIO, PRECO_ULT_COMPRA, PRECO_CUSTO, PRECO_CUSTO_INFO, PRECO_MEDIO_ANT, ESTOQUE_MINIMO, TEMPO_REPOSICAO, LOTE_MULTIPLO, CONSUMO_MEDIO, NARRATIVA, NARRATIVA_INGLES, NUMERO_ROTEIRO, NUMERO_ALTERNATI, DISTRIBUICAO_COR, CODIGO_BARRAS, IMPRIME_FICHA, TIPO_MAT_PRIMA, QTDE_UPS, QTDE_ELABORACAO, ESTOQUE_MAXIMO, DATA_DESATIVACAO, NARRATIVA2, NATUR_OPERACAO, SUGERE_ITEM, CGC_CLIENTE_2, CGC_CLIENTE_4, CGC_CLIENTE_9, GRAU_SOLIDEZ, NARRATIVA_ESPANHOL, CLASSIFICACAO_NCM, CLASSIFICACAO_NALADI, TIPO_PROD_QUIMICO, NUMERO_GRAFICO, COD_TIPO_VOLUME, ARTIGO_COTAS, GRADE_DISTRIBUICAO, PERC_COR, TAM_PONTO_1, TAM_PONTO_2, TAM_PONTO_3, TAM_PONTO_4, NE_TITULO, NE_TITULO_2, NE_TITULO_3, NE_TITULO_4, LFA_1, LFA_2, LFA_3, LFA_4, TEAR_FINURA, TEAR_DIAMETRO, PERC_ALT_DIM_COMP, PERC_ALT_DIM_LARG, LARGURA_PROJ, NUM_AGULHAS, LARGURA, GRAMATURA, CURSOS, COLUNAS, PERC_PERDAS, FATOR_CORRECAO, GRAMATURA_PROJ, DATA_LANCAMENTO, PONTO_REPOSICAO, TIPO_COR, CODIGO_CLIENTE, QTDE_MIN_VENDA, TONALIDADE, CONCENTRACAO, MOTIVO_USO, COMPLEMENTO, QTDE_MINIMA, SEQUENCIA_TAMANHO, PRECO_CONTRATIPO, NIVEL_ANTIGO, GRUPO_ANTIGO, SUBGRUPO_ANTIGO, ITEM_ANTIGO, ALTERNATIVA_ACABADO, CODIGO_CONTABIL, PRIORIDADE_DISTRIBUICAO, AGRUPADOR_LINHA, ALTERNATIVA_CUSTOS, ROTEIRO_CUSTOS, NR_FIOS_FITA, ITEM_AGRUPADOR, PRODUTO_INTEGRACAO, ESTACAO_DOSAGEM_ORGATEX, IND_ENVIA_INFOTINT, PERC_DETRACCION, CLASSIFICACAO_IBAMA, COD_SERVICO_LST, QTDE_MIN_VENDA_MIN, INTEGRADO_DECISOR, COMBINACAO_PROJETO, DESTINO_PROJETO, FLAG_EXPORTACAO_LOJA, CALC_DISPONIBILIDADE, PESO_UNITARIO, DATA_FIM_DISP, ORIGEM_PROD, TIPO_MOVIMENTACAO, CEST, QTDE_MIN_ENVIO, COD_PRODUTO_INTEGRACAO, FLAG_INTEGRACAO_PROD
FROM BASI_010 ptc
WHERE ptc.SUBGRU_ESTRUTURA = 'EG'
  AND ptc.NIVEL_ESTRUTURA = 1
  AND NOT EXISTS (
	SELECT
	  ptc2.GRUPO_ESTRUTURA
	FROM BASI_010 ptc2
	WHERE ptc2.GRUPO_ESTRUTURA = ptc.GRUPO_ESTRUTURA
	  AND ptc2.ITEM_ESTRUTURA = ptc.ITEM_ESTRUTURA
	  AND ptc2.SUBGRU_ESTRUTURA = 'PP'
	  AND ptc2.NIVEL_ESTRUTURA = 1
  )
;

-- estudando combinações de itens ref+tam+cor EG

SELECT
  p4.*
FROM BASI_040 p4
WHERE p4.SUB_ITEM = 'EG'
  AND NOT EXISTS (
    SELECT
      p4b.GRUPO_ITEM
	FROM BASI_040 p4b
	WHERE p4b.SUB_ITEM = 'PP'
	  AND p4b.GRUPO_ITEM = p4.GRUPO_ITEM
  )
;

-- copiando combinações de itens ref+tam+cor EG para PP

INSERT INTO SYSTEXTIL.BASI_040
(NIVEL_ITEM, GRUPO_ITEM, SUB_ITEM, ITEM_ITEM, ALTERNATIVA_ITEM, SEQUENCIA, SUB_COMP, ITEM_COMP, CONSUMO, CONS_UNID_MED_GENERICA, SEQUENCIA_TAMANHO, ALTERNATIVA_COMP, CODIGO_PROJETO, SEQUENCIA_PROJETO, QTDE_PECAS)
SELECT
NIVEL_ITEM, GRUPO_ITEM, 'PP', ITEM_ITEM, ALTERNATIVA_ITEM, SEQUENCIA, SUB_COMP, ITEM_COMP, CONSUMO, CONS_UNID_MED_GENERICA, SEQUENCIA_TAMANHO, ALTERNATIVA_COMP, CODIGO_PROJETO, SEQUENCIA_PROJETO, QTDE_PECAS
FROM BASI_040 p4
WHERE p4.SUB_ITEM = 'EG'
  AND NOT EXISTS (
    SELECT
      p4b.GRUPO_ITEM
	FROM BASI_040 p4b
	WHERE p4b.SUB_ITEM = 'PP'
	  AND p4b.GRUPO_ITEM = p4.GRUPO_ITEM
  )
;

-- estudando combinações que apontam para ref+tam+cor EG

SELECT
  p4u.*
FROM BASI_040 p4u
WHERE EXISTS
(
SELECT
  p4.*
FROM BASI_040 p4
JOIN basi_050 p5
  ON p5.NIVEL_ITEM = p4.NIVEL_ITEM
 AND p5.GRUPO_ITEM = p4.GRUPO_ITEM
 AND p5.SEQUENCIA = p4.SEQUENCIA
 AND p5.NIVEL_COMP = 1
WHERE p4.SUB_COMP = 'EG'
  AND p4u.NIVEL_ITEM = p4.NIVEL_ITEM
  AND p4u.GRUPO_ITEM = p4.GRUPO_ITEM
  AND p4u.SUB_ITEM = p4.SUB_ITEM
  AND p4u.ITEM_ITEM = p4.ITEM_ITEM
  AND p4u.SEQUENCIA = p4.SEQUENCIA
)
;

-- trocando combinações que apontam para ref+tam+cor EG para apontar para PP

UPDATE BASI_040 p4u
SET p4u.SUB_COMP = 'PP'
WHERE EXISTS
(
SELECT
  p4.*
FROM BASI_040 p4
JOIN basi_050 p5
  ON p5.NIVEL_ITEM = p4.NIVEL_ITEM
 AND p5.GRUPO_ITEM = p4.GRUPO_ITEM
 AND p5.SEQUENCIA = p4.SEQUENCIA
 AND p5.NIVEL_COMP = 1
WHERE p4.SUB_COMP = 'EG'
  AND p4u.NIVEL_ITEM = p4.NIVEL_ITEM
  AND p4u.GRUPO_ITEM = p4.GRUPO_ITEM
  AND p4u.SUB_ITEM = p4.SUB_ITEM
  AND p4u.ITEM_ITEM = p4.ITEM_ITEM
  AND p4u.SEQUENCIA = p4.SEQUENCIA
)
;

-- apagando combinações de itens ref+tam+cor EG

DELETE
FROM BASI_040 p4
WHERE p4.SUB_ITEM = 'EG'
;

--

SELECT *
FROM BASI_040 p4
WHERE p4.SUB_COMP = 'EG'
;

SELECT *
FROM BASI_040 p4
WHERE p4.SUB_ITEM = 'EG'
;

SELECT *
FROM BASI_050 p5
WHERE p5.SUB_COMP = 'EG'
;

SELECT *
FROM BASI_050 p5
WHERE p5.SUB_ITEM = 'EG'
;

SELECT
  *
FROM ESTQ_040 e
WHERE e.CDITEM_SUBGRUPO = 'EG'
  AND e.CDITEM_NIVEL99 = 1
;

SELECT
  *
FROM ESTQ_020 e
WHERE e.ITEM_CON_NIVEL99 = 1
  AND e.ITEM_CON_SUBGRUPO = 'EG'
;

-- ^^^^^^^^^^ corrige NA MÃO os EG para PP

-- apagando cadastro de ref+tam+cor EG

SELECT
  *
FROM BASI_010 ptc
WHERE ptc.SUBGRU_ESTRUTURA = 'EG'
  AND ptc.NIVEL_ESTRUTURA = 1
;

DELETE
FROM BASI_010 ptc
WHERE ptc.SUBGRU_ESTRUTURA = 'EG'
  AND ptc.NIVEL_ESTRUTURA = 1
;


-- apagando cadastro de ref+tam EG

DELETE
FROM BASI_020 pt
WHERE pt.TAMANHO_REF = 'EG'
  AND pt.BASI030_NIVEL030 = 1
;
