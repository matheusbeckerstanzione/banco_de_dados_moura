USE loja;


INSERT INTO cliente (nome)
VALUES
('Matheus'),
('Ana'),
('Karol'),
('Stefany'),
('Emerson');

SELECT * FROM cliente;

INSERT INTO produto (nome_produto, preco) VALUES
('Celular', 9000.00),
('Pc gamer', 459.00),
('Monitor', 680.00),
('Fone gamer', 700.00),
('Mouse', 100.00);

SELECT * FROM produto;

INSERT INTO pedido (data_hora, id_cliente, id_produto) VALUES
('2025-10-07 06:30:00', 1,1),
('2025-11-17 08:40:00', 2,3),
('2025-11-25 13:13:00', 3,5),
('2025-12-07 16:50:00', 4,2),
('2025-12-10 18:45:00', 5,4);

SELECT * FROM pedido;