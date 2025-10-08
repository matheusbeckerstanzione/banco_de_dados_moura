CREATE DATABASE loja;

CREATE TABLE cliente(
id_cliente INT IDENTITY(1,1) PRIMARY KEY,
nome NVARCHAR(255) NOT NULL,
);

SELECT * FROM cliente;


CREATE TABLE produto(
id_produto INT IDENTITY(1,1) PRIMARY KEY,
nome_produto NVARCHAR (255) NOT NULL,
preco NUMERIC(18, 4) NOT NULL,	

);

SELECT * FROM produto;

CREATE TABLE pedido(
id_pedido INT IDENTITY(1,1) PRIMARY KEY,
data_hora DATETIME,
id_cliente INT NOT NULL,
id_produto INT NOT NULL,

FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente),

FOREIGN KEY(id_produto) REFERENCES produto (id_produto),
);

SELECT * FROM pedido;

