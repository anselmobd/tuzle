SELECT
  r.CONTA_ESTOQUE
, r.*
FROM BASI_030 r
WHERE r.CONTA_ESTOQUE > 7
  AND r.NIVEL_ESTRUTURA = 1
  AND r.REFERENCIA < '99999'
;

SELECT
  r.CONTA_ESTOQUE
, r.*
FROM BASI_030 r
WHERE r.CONTA_ESTOQUE < 7
  AND r.NIVEL_ESTRUTURA = 1
  AND r.REFERENCIA > '99999'
;

SELECT
  r.CONTA_ESTOQUE
, r.*
FROM BASI_030 r
WHERE r.CONTA_ESTOQUE <> 10
  AND r.NIVEL_ESTRUTURA = 1
  AND r.REFERENCIA > '99999'
  AND (  r.REFERENCIA LIKE 'M%'
      OR r.REFERENCIA LIKE 'N%'
      OR r.REFERENCIA LIKE 'P%'
      OR r.REFERENCIA LIKE 'Q%'
      )
;

UPDATE BASI_030 r
SET
  r.CONTA_ESTOQUE = 10
WHERE r.CONTA_ESTOQUE <> 10
  AND r.NIVEL_ESTRUTURA = 1
  AND r.REFERENCIA > '99999'
  AND (  r.REFERENCIA LIKE 'M%'
      OR r.REFERENCIA LIKE 'N%'
      OR r.REFERENCIA LIKE 'P%'
      OR r.REFERENCIA LIKE 'Q%'
      )
;

SELECT
  r.CONTA_ESTOQUE
, r.*
FROM BASI_030 r
WHERE r.CONTA_ESTOQUE <> 12
  AND r.NIVEL_ESTRUTURA = 1
  AND r.REFERENCIA > '99999'
  AND (  r.REFERENCIA LIKE 'C%'
      OR r.REFERENCIA LIKE 'D%'
      OR r.REFERENCIA LIKE 'E%'
      OR r.REFERENCIA LIKE 'F%'
      )
;

UPDATE BASI_030 r
SET
  r.CONTA_ESTOQUE = 12
WHERE r.CONTA_ESTOQUE <> 12
  AND r.NIVEL_ESTRUTURA = 1
  AND r.REFERENCIA > '99999'
  AND (  r.REFERENCIA LIKE 'C%'
      OR r.REFERENCIA LIKE 'D%'
      OR r.REFERENCIA LIKE 'E%'
      OR r.REFERENCIA LIKE 'F%'
      )
;

SELECT
  r.CONTA_ESTOQUE
, r.*
FROM BASI_030 r
WHERE r.CONTA_ESTOQUE <> 14
  AND r.NIVEL_ESTRUTURA = 1
  AND r.REFERENCIA > '99999'
  AND (  r.REFERENCIA LIKE 'R%'
      OR r.REFERENCIA LIKE 'S%'
      OR r.REFERENCIA LIKE 'T%'
      OR r.REFERENCIA LIKE 'U%'
      )
;

UPDATE BASI_030 r
SET
  r.CONTA_ESTOQUE = 14
WHERE r.CONTA_ESTOQUE <> 14
  AND r.NIVEL_ESTRUTURA = 1
  AND r.REFERENCIA > '99999'
  AND (  r.REFERENCIA LIKE 'R%'
      OR r.REFERENCIA LIKE 'S%'
      OR r.REFERENCIA LIKE 'T%'
      OR r.REFERENCIA LIKE 'U%'
      )
;
