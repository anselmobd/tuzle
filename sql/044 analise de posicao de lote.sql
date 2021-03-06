SELECT
  l.ORDEM_PRODUCAO
, l.PERIODO_PRODUCAO
, l.ORDEM_CONFECCAO
, l.CODIGO_ESTAGIO
, e.DESCRICAO DESCRICAO_ESTAGIO
, l.QTDE_PROGRAMADA
, l.QTDE_EM_PRODUCAO_PACOTE
, l.QTDE_A_PRODUZIR_PACOTE
, l.CODIGO_FAMILIA
, l.NUMERO_ORDEM
, l.*
, e.*
--, r.*
FROM PCPC_040 l
JOIN MQOP_005 e
  ON e.CODIGO_ESTAGIO = l.CODIGO_ESTAGIO
--JOIN MQOP_050 r
--  ON r.NIVEL_ESTRUTURA = l.PROCONF_NIVEL99
-- AND r.GRUPO_ESTRUTURA = l.PROCONF_GRUPO
-- AND r.CODIGO_ESTAGIO = l.CODIGO_ESTAGIO
WHERE 1=1
  AND l.ORDEM_PRODUCAO = 1100
--  AND l.NUMERO_ORDEM = 165
--  AND l.PERIODO_PRODUCAO = 1719
--  AND l.ORDEM_CONFECCAO = 5537 -- 5839
ORDER BY
  l.PERIODO_PRODUCAO
, l.ORDEM_CONFECCAO
, l.SEQ_OPERACAO
;

-- pega nome de programa

SELECT *
FROM HDOC_036 p
WHERE p.CODIGO_PROGRAMA = 'pcpc_f072'
  AND p.LOCALE = 'pt_BR'
;

--

SELECT DISTINCT
  l.ORDEM_PRODUCAO
, l.NOME_PROGRAMA_CRIACAO
, l.NOME_PROGRAMA
, p.DESCRICAO
FROM PCPC_040 l
LEFT JOIN HDOC_036 p
  ON p.CODIGO_PROGRAMA = l.NOME_PROGRAMA
 AND p.LOCALE = 'pt_BR'
ORDER BY
  l.ORDEM_PRODUCAO
, l.NOME_PROGRAMA_CRIACAO
, l.NOME_PROGRAMA
;

SELECT DISTINCT
  l.ORDEM_PRODUCAO
, l.SITUACAO_EM_PROD_A_PROD
, l.SITUACAO_ORDEM
FROM PCPC_040 l
--WHERE 1=1
--  AND l.SITUACAO_ORDEM = 1 -- 499
--  AND l.SITUACAO_ORDEM = 2 -- 255
ORDER BY
  l.ORDEM_PRODUCAO
, l.SITUACAO_EM_PROD_A_PROD
, l.SITUACAO_ORDEM
;

-- lista informações mais importantes de estágios de lote

SELECT
  l.ORDEM_PRODUCAO op
, l.PERIODO_PRODUCAO per
, l.ORDEM_CONFECCAO oc
, l.CODIGO_ESTAGIO est
, e.DESCRICAO est_descr
, l.QTDE_PROGRAMADA q_p
, l.QTDE_EM_PRODUCAO_PACOTE q_ep
, l.QTDE_A_PRODUZIR_PACOTE q_ap
, l.CODIGO_FAMILIA fami
, l.NUMERO_ORDEM os
, l.NOME_PROGRAMA_CRIACAO prgcria
, l.NOME_PROGRAMA prg
, l.SITUACAO_EM_PROD_A_PROD sit_ea
, l.SITUACAO_ORDEM sit
, d.PROCESSO_SYSTEXTIL
, d.USUARIO_SYSTEXTIL
, d.DATA_INSERCAO
, d.*
, l.*
, e.*
--, r.*
FROM PCPC_040 l
JOIN MQOP_005 e
  ON e.CODIGO_ESTAGIO = l.CODIGO_ESTAGIO
--JOIN MQOP_050 r
--  ON r.NIVEL_ESTRUTURA = l.PROCONF_NIVEL99
-- AND r.GRUPO_ESTRUTURA = l.PROCONF_GRUPO
-- AND r.CODIGO_ESTAGIO = l.CODIGO_ESTAGIO
LEFT JOIN PCPC_045 d
  ON d.PCPC040_PERCONF = l.PERIODO_PRODUCAO
 AND d.PCPC040_ORDCONF = l.ORDEM_CONFECCAO
 AND d.PCPC040_ESTCONF = l.CODIGO_ESTAGIO
WHERE 1=1
  AND l.ORDEM_PRODUCAO = 105 -- 145
--  AND l.NUMERO_ORDEM = 165
--  AND l.PERIODO_PRODUCAO = 1719
--  AND l.ORDEM_CONFECCAO = 5537 -- 5839
ORDER BY
  l.ORDEM_PRODUCAO
, l.ORDEM_CONFECCAO
, l.SEQ_OPERACAO
;

SELECT *
FROM PCPC_045 d
WHERE d.PCPC040_PERCONF = 1719
  AND d.PCPC040_ORDCONF = 05200
;

SELECT
  r.*
FROM BASI_070 r
;

SELECT
  r.*
FROM MQOP_050 r
;

SELECT
  r.*
FROM MQOP_040 r
;

------------ Nao esta bom

SELECT
  l.ORDEM_PRODUCAO op
, l.PROCONF_NIVEL99 nivel
, l.PROCONF_GRUPO REF
, l.PROCONF_SUBGRUPO tam
, l.PROCONF_ITEM cor
, l.NUMERO_ORDEM os
, sum(l.QTDE_PROGRAMADA) qtd
FROM PCPC_040 l
WHERE 1=1
--  AND l.ORDEM_PRODUCAO = 105 -- 145
--  AND l.NUMERO_ORDEM = 165
  AND l.PERIODO_PRODUCAO = 1719
  AND l.ORDEM_CONFECCAO = 5537 -- 5839
GROUP BY
  l.ORDEM_PRODUCAO
, l.PROCONF_NIVEL99
, l.PROCONF_GRUPO
, l.PROCONF_SUBGRUPO
, l.PROCONF_ITEM
, l.NUMERO_ORDEM
ORDER BY
  l.ORDEM_PRODUCAO
, l.PROCONF_NIVEL99
, l.PROCONF_GRUPO
, l.PROCONF_SUBGRUPO
, l.PROCONF_ITEM
, l.NUMERO_ORDEM
;

-----------------  ordens canceladas e com movimentações

SELECT DISTINCT
  l.ORDEM_PRODUCAO op
--, r.*
FROM PCPC_040 l
JOIN MQOP_005 e
  ON e.CODIGO_ESTAGIO = l.CODIGO_ESTAGIO
--JOIN MQOP_050 r
--  ON r.NIVEL_ESTRUTURA = l.PROCONF_NIVEL99
-- AND r.GRUPO_ESTRUTURA = l.PROCONF_GRUPO
-- AND r.CODIGO_ESTAGIO = l.CODIGO_ESTAGIO
LEFT JOIN PCPC_045 d
  ON d.PCPC040_PERCONF = l.PERIODO_PRODUCAO
 AND d.PCPC040_ORDCONF = l.ORDEM_CONFECCAO
 AND d.PCPC040_ESTCONF = l.CODIGO_ESTAGIO
WHERE 1=1
--  AND l.ORDEM_PRODUCAO = 105 -- 145
--  AND l.NUMERO_ORDEM = 165
--  AND l.PERIODO_PRODUCAO = 1719
--  AND l.ORDEM_CONFECCAO = 5537 -- 5839
  AND l.SITUACAO_ORDEM = 9
  AND d.PROCESSO_SYSTEXTIL IS NOT NULL
ORDER BY
  l.ORDEM_PRODUCAO
;

-- OP e prg criador

SELECT UNIQUE
  l.ORDEM_PRODUCAO op
, l.NOME_PROGRAMA_CRIACAO prgcria
FROM PCPC_040 l
;

-- movimentações de lotes por usuários de sistema

SELECT
  l.ORDEM_PRODUCAO OP
, l.*
FROM PCPC_045 l
WHERE l.PCPC040_PERCONF = 1720
  AND l.PCPC040_ORDCONF = 13066
--  AND rownum = 1
ORDER BY
  l.SEQUENCIA
;

-- busca lotes com luitas movimentações

SELECT
  l.ORDEM_PRODUCAO OP
, l.PCPC040_PERCONF PER
, l.PCPC040_ORDCONF OC
, l.PCPC040_ESTCONF est
, count(*)
FROM PCPC_045 l
--WHERE l.PCPC040_PERCONF = 1719
--  AND l.PCPC040_ORDCONF = 05200
--  AND rownum = 1
GROUP BY
  l.ORDEM_PRODUCAO
, l.PCPC040_PERCONF
, l.PCPC040_ORDCONF
, l.PCPC040_ESTCONF
ORDER BY
  5 DESC
;

-- analisa lotes com mais de uma movimentação em um estágio

SELECT
  r.*
, l.*
FROM PCPC_045 r
JOIN PCPC_040 l
  ON l.PERIODO_PRODUCAO = r.PCPC040_PERCONF
 AND l.ORDEM_CONFECCAO = r.PCPC040_ORDCONF
 AND l.CODIGO_ESTAGIO = r.PCPC040_ESTCONF
WHERE r.PCPC040_PERCONF = 1721
  AND r.PCPC040_ORDCONF = 1175
--  AND rownum = 1
ORDER BY
  l.SEQ_OPERACAO
, r.SEQUENCIA
;

-- lotes

SELECT
  l.ORDEM_PRODUCAO OP
, l.*
FROM PCPC_040 l
WHERE l.PERIODO_PRODUCAO = 1719
  AND l.ORDEM_CONFECCAO = 05200
--  AND rownum = 1
ORDER BY
  l.SEQUENCIA_ESTAGIO
;

--
