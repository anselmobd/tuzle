SELECT
  p.REFERENCIA
, pt.DESC_TAM_FICHA
, p.DESCR_REFERENCIA
, ptc.SUBGRU_ESTRUTURA
, ptc.ITEM_ESTRUTURA
, ptc.DESCRICAO_15
, ptc.PRECO_MEDIO
FROM BASI_030 p
JOIN BASI_020 pt
  ON pt.BASI030_NIVEL030 = p.NIVEL_ESTRUTURA
 AND pt.BASI030_REFERENC = p.REFERENCIA
JOIN BASI_010 ptc
  ON ptc.NIVEL_ESTRUTURA = p.NIVEL_ESTRUTURA
 AND ptc.GRUPO_ESTRUTURA = p.REFERENCIA
 AND ptc.SUBGRU_ESTRUTURA = pt.TAMANHO_REF
WHERE p.REFERENCIA LIKE 'DV%'
ORDER BY
  p.REFERENCIA
, ptc.SUBGRU_ESTRUTURA
, ptc.ITEM_ESTRUTURA