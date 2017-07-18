-- Pesquisa infAdProd

SELECT
  c.NOME_CLIENTE || ' (' || i.CLIENTE9 || '/' || i.CLIENTE4 || ')'
, i.GRUPO_ESTRUTURA
, i.ITEM_ESTRUTURA
, i.SUBGRUPO_ESTRUTURA
, i.REF_CLIENTE
FROM ESTQ_400 i
LEFT JOIN BASI_220 t
  ON t.TAMANHO_REF = i.SUBGRUPO_ESTRUTURA
JOIN PEDI_010 c
  ON c.CGC_9 = i.CLIENTE9
 AND c.CGC_4 = i.CLIENTE4
 AND c.CGC_2 = i.CLIENTE2
WHERE 1=1
--  AND CLIENTE9 = 92754738
--  AND GRUPO_ESTRUTURA = '04310'
ORDER BY
  1
, i.GRUPO_ESTRUTURA
, i.ITEM_ESTRUTURA
, t.ORDEM_TAMANHO
, i.SUBGRUPO_ESTRUTURA
;

-- verifica infAfProd por pedido

SELECT
  p.PEDIDO_VENDA PEDIDO
, c.NOME_CLIENTE || ' (' || c.CGC_9 || '/' || c.CGC_4 || ')' CLIENTE
, i.CD_IT_PE_NIVEL99 NIVEL
, i.CD_IT_PE_GRUPO REF
, i.CD_IT_PE_ITEM COR
, i.CD_IT_PE_SUBGRUPO TAM
, ip.REF_CLIENTE INFADPROD
FROM PEDI_100 p
LEFT JOIN PEDI_010 c
  ON c.CGC_9 = p.CLI_PED_CGC_CLI9
 AND c.CGC_4 = p.CLI_PED_CGC_CLI4
JOIN PEDI_110 i
  ON i.PEDIDO_VENDA = p.PEDIDO_VENDA
JOIN ESTQ_400 ip
  ON ip.CLIENTE9 = CLI_PED_CGC_CLI9
 AND ip.CLIENTE4 = CLI_PED_CGC_CLI4
 AND ip.GRUPO_ESTRUTURA = i.CD_IT_PE_GRUPO
 AND ip.SUBGRUPO_ESTRUTURA = i.CD_IT_PE_SUBGRUPO
 AND ip.ITEM_ESTRUTURA = i.CD_IT_PE_ITEM
LEFT JOIN BASI_220 t
  ON t.TAMANHO_REF = ip.SUBGRUPO_ESTRUTURA
WHERE p.PEDIDO_VENDA = 279
ORDER BY
  p.PEDIDO_VENDA
, p.CLI_PED_CGC_CLI9
, p.CLI_PED_CGC_CLI4
, i.CD_IT_PE_NIVEL99
, i.CD_IT_PE_GRUPO
, i.CD_IT_PE_ITEM
, t.ORDEM_TAMANHO
, i.CD_IT_PE_SUBGRUPO
;

--

SELECT
  p.PEDIDO_VENDA PEDIDO
, i.*
FROM PEDI_100 p
JOIN PEDI_110 i
  ON i.PEDIDO_VENDA = p.PEDIDO_VENDA
WHERE p.PEDIDO_VENDA = 504
;