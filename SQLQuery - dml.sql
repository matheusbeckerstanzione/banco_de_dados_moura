USE db_escola;

INSERT INTO tb_escola(nome, endereco) VALUES
('Moura branco', 'Rua Tapajós, 1085 - Olimpico');

SELECT * FROM tb_escola;

INSERT INTO tb_aluno(nome, data_nasc,matricula,idade,cpf,id_escola) VALUES
('Matheus','2008/12/03','38.012.351', 17,'02350595870',1),
('Ninha' ,'2010/04/29', '23.364.545',15,'74327199882',1),
('Thiago' ,'2010/06/10', '25.334.745',15,'71317199882',1),
('Leonardo' ,'2009/05/19', '23.364.685',16,'18717199882',1),
('Nata' ,'2010/04/29', '03.244.905',15,'23717199882',1),
('Miguel' ,'2010/04/29', '13.984.578',15,'43717199882',1),
('Felipe' ,'2010/04/29', '73.234.325',15,'73417199882',1);

SELECT * FROM tb_aluno;

INSERT INTO tb_turma(numero_sala, periodo, serie, nome_turma, id_escola) VALUES
(4,'2025/09/26 16:30:00','c', '4 ano b', 1),
(7,'2025/09/26 9:00:00','a', '7 ano b',1);

SELECT * FROM tb_turma;

INSERT INTO tb_prova(nome_professor, materia, data_prova, duracao, nota, id_aluno) VALUES

('Sandra', 'educação fisica', '2025/09/26', '01:30:00',10, 7 );

SELECT * FROM tb_prova;


INSERT INTO tb_turma_prova (id_turma, id_prova)
VALUES
(3, 7),
(4, 7);


SELECT * FROM tb_turma_prova;

UPDATE tb_aluno
SET nome = 'Paulo'
WHERE cpf = '23717199882';

SELECT * FROM tb_aluno;



DELETE FROM tb_aluno
WHERE cpf = '23717199882';

SELECT * FROM tb_aluno;