USE banco_dados_devconnect;	

/*1*/
SELECT 
    U1.nome_usuario AS Seguidor,
    U2.nome_usuario AS Seguido
FROM seguidor S
INNER JOIN tb_usuario U1 ON S.UsuarioSeguidorId = U1.id_usuario
INNER JOIN tb_usuario U2 ON S.UsuarioSeguidoId = U2.id_usuario;

/*2*/

SELECT 
    U.nome_usuario AS Usuario,
    COUNT(S.UsuarioSeguidoId) AS Quantidade_de_Seguidores
FROM tb_usuario U
LEFT JOIN seguidor S 
    ON U.id_usuario = S.UsuarioSeguidoId
GROUP BY U.nome_usuario
ORDER BY Quantidade_de_Seguidores DESC;

/*3*/

SELECT 
    p.descricao,
    p.imagem_url,
    u.nome_usuario
FROM tb_publicacao AS p
INNER JOIN tb_usuario AS u 
ON p.id_usuario = u.id_usuario;

/*4*/
SELECT 
    U.nome_usuario AS Nome_do_Usuario,
    P.descricao AS Publicacao,
    C.texto AS Comentario,
    C.data_comentario AS Data
FROM comentario C
INNER JOIN tb_usuario U ON C.id_usuario = U.id_usuario
INNER JOIN tb_publicacao P ON C.id_publicacao = P.id_publicacao
ORDER BY P.id_publicacao, C.data_comentario;

/*5*/
SELECT 
    P.descricao AS Publicacao,
    COUNT(C.id_curtida) AS Quantidade_de_Curtidas
FROM tb_publicacao P
LEFT JOIN curtida C ON P.id_publicacao = C.id_publicacao
GROUP BY P.descricao
ORDER BY Quantidade_de_Curtidas DESC;

/*6*/
SELECT 
    U.nome_usuario AS Usuario_Sem_Publicacao
FROM tb_usuario U
LEFT JOIN tb_publicacao P 
    ON U.id_usuario = P.id_usuario
WHERE P.id_publicacao IS NULL;

/*7*/
SELECT 
    U.nome_usuario AS Usuario_Sem_Reacao
FROM tb_usuario U
LEFT JOIN curtida C 
    ON U.id_usuario = C.id_usuario
WHERE C.id_curtida IS NULL;


SELECT * FROM curtida;
/*8*/
DELETE FROM curtida
WHERE id_usuario = 2
  AND id_publicacao = 2;



