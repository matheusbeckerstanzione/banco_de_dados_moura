 USE db_escola;


 SELECT id_escola, nome FROM tb_escola

 -- Select top limita a quantidade
 SELECT TOP 3 nome FROM tb_aluno;

 SELECT TOP 3 nome FROM tb_aluno 
 ORDER BY id_aluno DESC; 

 SELECT * FROM tb_turma;

 SELECT nome_turma 
 FROM tb_turma 
 WHERE periodo = '2025/09/26 16:30:00';

 SELECT * FROM tb_prova
 WHERE nome_professor = 'Sandra';


SELECT COUNT(cpf) AS qtd_alunos FROM tb_aluno

SELECT COUNT(id_aluno) AS qtd_aluno
FROM tb_prova
WHERE materia = 'educação fisica';

SELECT * FROM tb_prova;


/*SELECT MIN(data_nasc) AS mais_velho
FROM tb_aluno;	*/

SELECT nome, data_nasc
FROM tb_aluno
WHERE data_nasc = (SELECT MIN(data_nasc) FROM tb_aluno);

SELECT nome, data_nasc
FROM tb_aluno
WHERE data_nasc = (SELECT MAX(data_nasc) 
FROM tb_aluno);


SELECT SUM (id_turma) AS total FROM tb_turma;

SELECT * FROM tb_turma;


SELECT AVG (nota) AS media FROM tb_prova;

SELECT * FROM tb_prova;

SELECT MAX(data_nasc) AS mais_novo, id_aluno
FROM tb_aluno
GROUP BY id_aluno
ORDER BY mais_novo DESC;


