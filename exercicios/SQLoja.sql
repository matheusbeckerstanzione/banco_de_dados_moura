USE Loja;

SELECT * FROM Pedido;

--TRAGA OU EXIBA OS REGISTROS DOS PEDIDOS
--PRECISA TER O NOME DO CLIENTE, O NOME DO PRODUTO E A DATA E HORA DO PEDIDO
SELECT 
	FORMAT (data_hora, 'dd-MM-yyyy hh:mm:ss') AS Data_Horario,
	C.nome	AS Nome_Cliente,
	PR.nome_produto AS Nome_Produto
FROM pedido
INNER JOIN cliente C	ON pedido.id_cliente = C.id_cliente
INNER JOIN produto PR	ON pedido.id_produto = PR.id_produto
WHERE MONTH(data_hora) = '10';
--WHERE DAY(Data_Horario) = '10';
--por a data e hora no formato dd-mm-aaaa hh:mm:ss
--exiba um registro de uma data especifica - filtrar por data
--exiba um registro de um mes especifico - filtrar por mes da data



--EXIBA TODOS OS CLIENTES QUE NÃO FIZERAM PEDIDOS
--Nome do cliente e data do pedido

SELECT 
	C.Nome,
	PE.data_hora
FROM cliente C --tabela esquerda
LEFT JOIN pedido PE ON C.id_cliente = PE.id_cliente;

SELECT * FROM pedido;

--EXIBA SOMENTE CLIENTES QUE NÃO FIZERAM PEDIDO - DICA: PRECISA VERIFICAR SE É NULL
SELECT 
	C.nome,
	PE.data_hora
FROM cliente C --tabela esquerda
LEFT JOIN pedido PE ON C.id_cliente = PE.id_cliente
WHERE PE.id_cliente IS NULL;

SELECT * FROM cliente;

--EXIBA TODOS OS PRODUTOS QUE ESTÃO OU NAO ATRELADOS A PEDIDOS
--Nome do produto e a data e hora do pedido
SELECT 
	PE.data_hora,
	PR.nome_produto
FROM pedido PE
RIGHT JOIN produto PR ON PE.id_produto = PR.id_produto



--LISTE TODOS OS REGISTRO DE PEDIDOS QUE SÃO DO DIA OU DATA 07/08/2025 ATÉ 08/08/2025
--DICA: ENTRE AS DATAS
--IDENTIFIQUE SE É UM INNER,LEFT OU RIGHT
--OU SEJA OUTRO SELECT

SELECT
	C.nome	AS  NomeCliente,
	PR.nome_produto AS NomeProduto

FROM pedido
INNER JOIN cliente C ON pedido.id_cliente = C.id_cliente
INNER JOIN produto PR ON Pedido.id_produto = PR.id_produto
WHERE data_hora BETWEEN '2025/10/07' AND '2025/10/08';

SELECT
	PE.data_hora,
	PR.nome_produto
FROM pedido PE
INNER JOIN produto PR ON PE.id_pedido = PR.ID_Produto
WHERE data_hora >= '2025-10-07' AND data_hora < '2025-10-08';


--MOSTRE TODOS OS CLIENTES, PRODUTOS E PEDIDOS MESMO QUE NÃO SE CORRESPONDAM
SELECT 
C.nome,
PR.nome_produto,
PR.preco,
PE.data_hora,
FORMAT(PE.data_hora, 'dd-mm-yy hh:mm:ss')
FROM cliente C
FULL JOIN pedido PE ON PE.id_cliente = C.id_cliente
FULL JOIN produto PR ON PR.id_produto = PE.id_produto;