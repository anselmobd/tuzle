SELECT
  c.CLASSIFIC_FISCAL
FROM BASI_010 c
;

UPDATE BASI_010 c
SET
  c.CLASSIFIC_FISCAL = (
    SELECT
      r.CLASSIFIC_FISCAL
    FROM basi_030 r
    WHERE r.NIVEL_ESTRUTURA = c.NIVEL_ESTRUTURA
      AND r.REFERENCIA = c.GRUPO_ESTRUTURA
  )
WHERE c.NIVEL_ESTRUTURA = 1
;

SELECT
  c.CLASSIFIC_FISCAL
FROM BASI_010 c
WHERE c.NIVEL_ESTRUTURA = 1
  AND c.CLASSIFIC_FISCAL IS NULL
;
