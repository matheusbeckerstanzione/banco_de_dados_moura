CREATE DATABASE db_escola;

/*comando que executa comando por bloco*/
GO

/*COMANDO QUE USA UM BANCO CRIADO*/
USE db_escola

CREATE TABLE tb_escola(
	id_escola INT IDENTITY(1,1) PRIMARY KEY,
	nome NVARCHAR(255) NOT NULL,
	endereco NVARCHAR(255) NOT NULL,
);
GO

SELECT * FROM tb_escola;

CREATE TABLE tb_aluno(
id_aluno INT IDENTITY(1,1) PRIMARY KEY,
nome NVARCHAR(255) NOT NULL,
idade INT NOT NULL,
cpf	NCHAR(11) UNIQUE NOT NULL,
matricula NCHAR(13) UNIQUE NOT NULL,
data_nasc DATE NOT NULL,

id_escola INT NOT NULL, 

FOREIGN KEY (id_escola) REFERENCES tb_escola(id_escola),
);

GO

SELECT * FROM tb_aluno;

CREATE TABLE tb_prova(
id_prova INT IDENTITY(1,1) PRIMARY KEY,
nome_professor NVARCHAR(255) NOT NULL, 
materia NVARCHAR(255) NOT NULL,
data_prova DATE NOT NULL,
duracao TIME NOT NULL,
nota DECIMAL(3,1) NOT NULL,	

id_aluno INT NOT NULL,
FOREIGN KEY (id_aluno)
REFERENCES tb_aluno(id_aluno),

);

GO

SELECT * FROM tb_prova;

CREATE TABLE tb_turma(
id_turma INT IDENTITY(1,1) PRIMARY KEY,
 numero_sala INT NOT NULL,
 periodo NVARCHAR(5) NOT NULL,
 serie NVARCHAR(100) NOT NULL,
 nome_turma NVARCHAR(255) NOT NULL,


 id_escola INT NOT NULL, 

FOREIGN KEY (id_escola) REFERENCES tb_escola(id_escola),
);

GO

SELECT * FROM tb_turma;




SELECT * FROM tb_turma_prova;


