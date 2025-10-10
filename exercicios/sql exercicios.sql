USE loja;

SELECT * FROM pedido;



SELECT * FROM pedido;

SELECT 
FORMAT (data_hora, 'dd_mm_yyyy hh:mm:ss') AS data_hora,
C.nome,
pro.nome_produto
FROM pedido 
INNER JOIN cliente C 
ON pedido.id_cliente = C.id_cliente
INNER JOIN produto pro ON pedido.id_produto = pro.id_produto
/*WHERE MONTH(data_hora) = '07'*/
WHERE DAY(data_hora) = '07'


SELECT C.nome, pe.data_hora 
FROM cliente C 
LEFT JOIN pedido pe 
ON C.id_cliente = pe.data_hora
 WHERE pe.id_pedido IS NULL;


 SELECT pe.data_hora,
 pr.nome_produto
 FROM pedido pe 
 RIGHT JOIN produto pr ON pe.id_produto = pr.id_produto;


 SELECT 
FORMAT(data_hora, 'dd_MM_yyyy HH:mm:ss') AS data_hora,
C.nome,
pro.nome_produto
FROM pedido 
INNER JOIN cliente C ON pedido.id_cliente = C.id_cliente
INNER JOIN produto pro ON pedido.id_produto = pro.id_produto
WHERE data_hora BETWEEN '2025-11-17 08:40:00.000' AND '2025-12-07 16:50:00.000';