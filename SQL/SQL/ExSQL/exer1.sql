-- CREATE DATABASE cadastroAlunos1

USE cadastroAlunos1

CREATE TABLE alunos
(ID INT PRIMARY KEY,
 Nome NVARCHAR(100),
 Cidade NVARCHAR(100),
 Idade INT
);

INSERT INTO alunos(ID, Nome, Cidade, Idade)
VALUES
(1037, 'Thiago Augusto', 'Santo André', '37'),
(1025, 'Kessia Milena', 'Diadema', '25'),
(1041, 'Odirlei Sabela', 'Zona Leste', '41'),
(1021, 'Samanta Alves', 'Osasco', '21'),
(1042, 'Samuel', 'São Caetano do Sul', '42');



SELECT * FROM alunos

SELECT * FROM alunos
WHERE idade > 20;

SELECT * FROM alunos
WHERE Cidade = 'Santo André';

