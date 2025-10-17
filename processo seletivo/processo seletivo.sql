CREATE DATABASE banco_dados_devconnect

CREATE TABLE tb_usuario(

id_usuario INT IDENTITY(1,1) PRIMARY KEY,
 nome_completo NVARCHAR(255) NOT NULL,
 nome_usuario NVARCHAR(255) UNIQUE NOT  NULL,
 email NVARCHAR(255) UNIQUE NOT NULL,
 senha NVARCHAR(255) UNIQUE NOT NULL,
 foto_perfil_url NVARCHAR(255) NOT NULL,
);

SELECT * FROM tb_usuario;

CREATE TABLE tb_publicacao (
id_publicacao INT IDENTITY(1,1) PRIMARY KEY,
descricao NVARCHAR(255) NOT NULL,
imagem_url NVARCHAR(255) NOT NULL,
data_puclicacao DATE NOT NULL,


id_usuario INT NOT NULL,

FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario),

);

SELECT * FROM tb_publicacao;

CREATE TABLE curtida (
id_curtida INT IDENTITY(1,1) PRIMARY KEY,
id_usuario INT NOT NULL,
id_publicacao INT NOT NULL,

FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario),

FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id_publicacao),
);

SELECT * FROM curtida;

CREATE TABLE comentario(
id_comentario INT IDENTITY(1,1) PRIMARY KEY,
texto NVARCHAR(255) NOT NULL,
data_comentario DATE NOT NULL,

id_usuario INT NOT NULL,
id_publicacao INT NOT NULL,

FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario),

FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id_publicacao),

);

SELECT * FROM comentario;

CREATE TABLE seguidor (
    UsuarioSeguidorId INT NOT NULL,
    UsuarioSeguidoId INT NOT NULL,
    PRIMARY KEY (UsuarioSeguidorId, UsuarioSeguidoId),
    FOREIGN KEY (UsuarioSeguidorId) REFERENCES tb_usuario(id_usuario),
    FOREIGN KEY (UsuarioSeguidoId) REFERENCES tb_usuario(id_usuario),
);

SELECT * FROM seguidor;



