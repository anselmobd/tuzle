-- !!! Verificar na view se já tem data de faturamento da OS. Se tem, não deve excluir.

-- !!! ATENÇÃO: Não é só marcar e desmarcar os lotes no estágio, tem que cuidar
-- das tabelas obrf_081 e obrf_082

SELECT DISTINCT
  l.ORDEM_PRODUCAO
, l.NUMERO_ORDEM
, l.SEQ_ORDEM_SERV
, l.PERIODO_PRODUCAO
, l.ORDEM_CONFECCAO
, l.*
FROM pcpc_040 l
WHERE 1=1
  --AND l.ORDEM_PRODUCAO = 297
  AND l.NUMERO_ORDEM = 302
  AND l.CODIGO_ESTAGIO = 39
  AND l.PERIODO_PRODUCAO = 1721
  AND l.ORDEM_CONFECCAO IN (
    3679
  , 3708
  )
  AND l.NUMERO_ORDEM <> 0
  AND l.SEQ_ORDEM_SERV <> 0
;

--

UPDATE pcpc_040 l
SET
  l.NUMERO_ORDEM = 0
, l.SEQ_ORDEM_SERV = 0
WHERE 1=1
  --AND l.ORDEM_PRODUCAO = 297
  AND l.NUMERO_ORDEM = 302
  AND l.CODIGO_ESTAGIO = 39
  AND l.PERIODO_PRODUCAO = 1721
  AND l.ORDEM_CONFECCAO IN (
    3679
  , 3708
  )
  AND l.NUMERO_ORDEM <> 0
  AND l.SEQ_ORDEM_SERV <> 0
;

-- estudando tabelas da OS

-- lotes marcados com a OS

SELECT DISTINCT
  l.ORDEM_PRODUCAO
, l.NUMERO_ORDEM
, l.SEQ_ORDEM_SERV
, l.PERIODO_PRODUCAO
, l.ORDEM_CONFECCAO
, l.*
FROM pcpc_040 l -- lotes nos estágios
WHERE 1=1
  --AND l.ORDEM_PRODUCAO = 297
  AND l.NUMERO_ORDEM = 375
  AND l.CODIGO_ESTAGIO = 39
  AND l.PERIODO_PRODUCAO = 1721
--  AND l.ORDEM_CONFECCAO IN (
--    3770
--
--  )
ORDER BY
  l.ORDEM_CONFECCAO
;

-- capa da OS

SELECT
  DISTINCT
  s.CODIGO_SERVICO
, s.CGCTERC_FORNE9
--, s.*
FROM OBRF_080 s
--WHERE s.NUMERO_ORDEM = 375
ORDER BY
  s.CODIGO_SERVICO
, s.CGCTERC_FORNE9
;

-- itens da OS - só nivel 1 - tudo que volta

SELECT
  DISTINCT
  s.PRODORD_NIVEL99
, s.PRODORD_GRUPO
, s.PRODORD_SUBGRUPO
, s.PRODORD_ITEM
--, s.*
FROM OBRF_081 s
WHERE s.NUMERO_ORDEM = 357
ORDER BY
  s.PRODORD_NIVEL99
, s.PRODORD_GRUPO
, s.PRODORD_SUBGRUPO
, s.PRODORD_ITEM
;

DELETE FROM OBRF_081 s
WHERE s.NUMERO_ORDEM = 357
;

-- itens da OS - todos os níveis - tudo que  sai

SELECT
  DISTINCT
  s.PRODSAI_NIVEL99
, s.PRODSAI_GRUPO
, s.PRODSAI_SUBGRUPO
, s.PRODSAI_ITEM
--, s.*
FROM OBRF_082 s
WHERE s.NUMERO_ORDEM = 357
ORDER BY
  s.PRODSAI_NIVEL99
, s.PRODSAI_GRUPO
, s.PRODSAI_SUBGRUPO
, s.PRODSAI_ITEM
;

DELETE
FROM OBRF_082 s
WHERE s.NUMERO_ORDEM = 357
;

--

SELECT
  DISTINCT
  s.PRODSAI_NIVEL99
, s.PRODSAI_GRUPO
, s.PRODSAI_SUBGRUPO
, s.PRODSAI_ITEM
--, s.*
FROM OBRF_082 s
WHERE s.NUMERO_ORDEM = 533
  AND s.PRODSAI_NIVEL99 = 1
  AND s.PRODSAI_GRUPO = 'E156J'
  AND s.PRODSAI_SUBGRUPO = 'P'
  AND s.PRODSAI_ITEM = '0000PR'
ORDER BY
  s.PRODSAI_NIVEL99
, s.PRODSAI_GRUPO
, s.PRODSAI_SUBGRUPO
, s.PRODSAI_ITEM
;

DELETE
FROM OBRF_082 s
WHERE s.NUMERO_ORDEM = 533
  AND s.PRODSAI_NIVEL99 = 1
  AND s.PRODSAI_GRUPO = 'E156J'
  AND s.PRODSAI_SUBGRUPO = 'P'
  AND s.PRODSAI_ITEM = '0000PR'

-- log

SELECT
  o.*
FROM OBRF_081_LOG o
--WHERE o.PERIODO_PRODUCAO = 1721
--  AND o.ORDEM_CONF_ENT = 12381
WHERE o.NUMERO_ORDEM = 242
;
