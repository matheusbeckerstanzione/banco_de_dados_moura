USE banco_dados_devconnect;


USE banco_dados_devconnect;


SELECT id_usuario, nome_usuario FROM tb_usuario;


SELECT TOP 2 nome_usuario FROM tb_usuario;


SELECT TOP 2 nome_usuario 
FROM tb_usuario 
ORDER BY id_usuario DESC;


SELECT * FROM tb_publicacao;


SELECT descricao, data_puclicacao
FROM tb_publicacao
WHERE id_usuario = 1;


SELECT * FROM comentario;


SELECT texto, data_comentario 
FROM comentario 
WHERE id_usuario = 2;


SELECT COUNT(id_usuario) AS qtd_usuarios FROM tb_usuario;


SELECT COUNT(id_publicacao) AS qtd_publicacoes
FROM tb_publicacao
WHERE id_usuario = 1;


SELECT COUNT(id_curtida) AS qtd_curtidas, id_publicacao
FROM curtida
GROUP BY id_publicacao;


SELECT nome_usuario, id_usuario
FROM tb_usuario
WHERE id_usuario = (SELECT MIN(id_usuario) FROM tb_usuario);


SELECT nome_usuario, id_usuario
FROM tb_usuario
WHERE id_usuario = (SELECT MAX(id_usuario) FROM tb_usuario);


SELECT SUM(id_publicacao) AS soma_ids_publicacoes FROM tb_publicacao;


SELECT AVG(qtd) AS media_curtidas
FROM (
    SELECT COUNT(id_curtida) AS qtd
    FROM curtida
    GROUP BY id_publicacao
) AS sub;


SELECT texto, data_comentario, id_usuario
FROM comentario
ORDER BY data_comentario DESC;
