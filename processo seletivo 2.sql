USE banco_dados_devconnect;

INSERT INTO tb_usuario (id_usuario,nome_completo, nome_usuario, email, senha, foto_perfil_url) VALUES
(1,'João Silva', 'joaosilva', 'joao@email.com', '123456', 'img/joao.url'),
(1,'Maria Souza', 'mariinha', 'maria@email.com', 'senha123', 'img/maria.url');

INSERT INTO tb_publicacao (descricao, imagem_url, data_puclicacao, id_usuario)
VALUES
('Primeira postagem do João!', 'img/post1.jpg', GETDATE(), 1),
('Bom dia galera!', 'img/post2.jpg', GETDATE(), 2),
('Aprendendo SQL no DevConnect!', 'img/post3.jpg', GETDATE(), 3);


INSERT INTO curtida (id_usuario, id_publicacao)
VALUES
(2, 1), 
(3, 1), 
(1, 2);


INSERT INTO comentario (texto, data_comentario, id_usuario, id_publicacao)
VALUES
('Parabéns pela postagem!', '12/1/2005', 2, 1),
('Gostei muito!', '12/1/2005', 3, 1),
('Valeu!', '12/1/2005', 1, 2);


INSERT INTO seguidor (UsuarioSeguidorId, UsuarioSeguidoId)
VALUES
(1, 2), -- João segue Maria
(2, 1), -- Maria segue João
(3, 1); -- Carlos segue João
