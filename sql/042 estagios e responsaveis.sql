SELECT
  e.CODIGO_ESTAGIO ESTAGIO
, e.DESCRICAO
, COALESCE(u.CODIGO_USUARIO, 0) CODIGO_USUARIO
, COALESCE(u.USUARIO, '--SEM RESPONSAVEL--') USUARIO
FROM MQOP_005 e
LEFT JOIN MQOP_006 r
  ON r.CODIGO_ESTAGIO = e.CODIGO_ESTAGIO
 AND r.TIPO_MOVIMENTO = 0 -- bipa estágio
 AND r.CODIGO_USUARIO < 90000
LEFT JOIN HDOC_030 u
  ON u.CODIGO_USUARIO = r.CODIGO_USUARIO
WHERE e.CODIGO_ESTAGIO <> 0
ORDER BY
  e.CODIGO_ESTAGIO
, u.USUARIO
;

SELECT
  u.CODIGO_USUARIO
, u.USUARIO
, e.CODIGO_ESTAGIO ESTAGIO
, e.DESCRICAO
FROM MQOP_005 e
JOIN MQOP_006 r
  ON r.CODIGO_ESTAGIO = e.CODIGO_ESTAGIO
 AND r.TIPO_MOVIMENTO = 0 -- bipa estágio
 AND r.CODIGO_USUARIO < 90000
JOIN HDOC_030 u
  ON u.CODIGO_USUARIO = r.CODIGO_USUARIO
WHERE e.CODIGO_ESTAGIO <> 0
ORDER BY
  u.USUARIO
, e.CODIGO_ESTAGIO
;
