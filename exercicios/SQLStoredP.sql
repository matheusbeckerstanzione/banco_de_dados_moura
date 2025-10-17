CREATE DATABASE StoredP;

-- 1. Criar a tabela
USE StoredP;

CREATE TABLE Clientes (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(50),
    Email NVARCHAR(50)
);
GO
-- 2. Criar a procedure para inserir dados
CREATE PROCEDURE InserirCliente
    @Nome NVARCHAR(50),
    @Email NVARCHAR(50)
AS
BEGIN
    INSERT INTO Clientes (Nome, Email)
    VALUES (@Nome, @Email);
END;
GO
-- 3. Executar a procedure para inserir dados
EXEC InserirCliente @Nome = 'Maria', @Email = 'maria@email.com';
EXEC InserirCliente @Nome = 'João', @Email = 'joao@email.com';

-- 4. Conferir os dados inseridos
SELECT * FROM Clientes;

