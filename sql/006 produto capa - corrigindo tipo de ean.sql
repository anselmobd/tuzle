UPDATE BASI_050 x
SET
  x.CONSUMO = 1
WHERE x.NIVEL_ITEM = 1
  AND x.CONSUMO = 0
;

------------------------

UPDATE BASI_040 x
SET
  SUB_COMP =
  ( SELECT
      c.sub_comp
    FROM BASI_050 c
    WHERE c.NIVEL_ITEM = x.NIVEL_ITEM
      AND c.GRUPO_ITEM = x.GRUPO_ITEM
      AND c.SEQUENCIA = x.SEQUENCIA
  )
WHERE x.NIVEL_ITEM = 1
  AND x.SUB_COMP = '000'
;

--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- EXECUTAR
--
-----------------------------------
--
-- RASCUNHO
--vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

SELECT
  SUB_COMP
, ( SELECT
      c.sub_comp
    FROM BASI_050 c
    WHERE c.NIVEL_ITEM = x.NIVEL_ITEM
      AND c.GRUPO_ITEM = x.GRUPO_ITEM
      AND c.SEQUENCIA = x.SEQUENCIA
  ) sub_comp_calc
, NIVEL_ITEM, GRUPO_ITEM, SUB_ITEM, ITEM_ITEM, ALTERNATIVA_ITEM, SEQUENCIA, ITEM_COMP, CONSUMO, CONS_UNID_MED_GENERICA, SEQUENCIA_TAMANHO, ALTERNATIVA_COMP, CODIGO_PROJETO, SEQUENCIA_PROJETO, QTDE_PECAS
FROM BASI_040 x
WHERE x.NIVEL_ITEM = 1
  AND x.GRUPO_ITEM = '0226R'
  AND x.SUB_COMP = '000'

--------------------------------

UPDATE BASI_040 x
SET
  SUB_COMP =
  ( SELECT
      c.sub_comp
    FROM BASI_050 c
    WHERE c.NIVEL_ITEM = x.NIVEL_ITEM
      AND c.GRUPO_ITEM = x.GRUPO_ITEM
      AND c.SEQUENCIA = x.SEQUENCIA
  )
WHERE x.NIVEL_ITEM = 1
  AND x.GRUPO_ITEM = '0226R'
  AND x.SUB_COMP = '000'

--------------------------------

SELECT
  x.CONSUMO
, x.*
FROM BASI_050 x
WHERE x.NIVEL_ITEM = 1
  AND x.GRUPO_ITEM = '0226R'
  AND x.CONSUMO = 0

----------------

UPDATE BASI_050 x
SET
  x.CONSUMO = 1.123
WHERE x.NIVEL_ITEM = 1
  AND x.GRUPO_ITEM = '0226R'
  AND x.CONSUMO = 0
