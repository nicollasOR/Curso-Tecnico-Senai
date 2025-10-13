USE BIBLIOTECA2;

SELECT * FROM Autor
/*


CREATE DATABASE BIBLIOTECA2;
GO

USE BIBLIOTECA2;
GO

CREATE TABLE Autor (
	id_Autor INT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
	);
GO

CREATE TABLE Livro (
	id_Livro INT PRIMARY KEY,
	titulo VARCHAR(150) NOT NULL,
	ano INT,
	id_Autor INT NOT NULL,
	CONSTRAINT fk_livro_autor FOREIGN KEY (id_Autor) REFERENCES Autor(id_Autor) ON DELETE CASCADE
	);
GO

CREATE TABLE Leitor (
	id_Leitor INT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR (120) UNIQUE
	);
GO

CREATE TABLE Emprestimo (
	id_Emprestimo INT PRIMARY KEY,
	id_Livro INT NOT NULL,
	id_Leitor INT NOT NULL,
	data_emprestimo DATE NOT NULL, 
	data_devolucao DATE,
	CONSTRAINT fk_empr_livro FOREIGN KEY (id_Livro) REFERENCES Livro(id_Livro) ON DELETE CASCADE,
	CONSTRAINT fk_empr_leitor FOREIGN KEY (id_Leitor) REFERENCES Leitor(id_Leitor) ON DELETE CASCADE
	);
GO

INSERT INTO Autor VALUES 
  (1,'Machado de Assis'),
  (2,'Clarice Lispector'),
  (3,'J. K. Rowling'),
  (4,'Shakespeare');
GO

INSERT INTO Livro VALUES 
	(1, 'Dom Casmurro', 1899, 1),
	(2, 'Memórias Póstumas de Brás Cubas', 1881, 1),
	(3, 'A hora da estrela', 1977, 2),
	(4, 'O sonho de uma noite de verão', 1600, 4),		
	(5, 'Harry Potter e o calice de fogo', 2000, 3);
GO

INSERT INTO Leitor VALUES
	(1, 'Thiago Oliveira' , 'thiago@gmail.com'),
	(2, 'Caique' , 'caique@gmail.com'),
	(3, 'Odirlei' , 'odi@gmail.com' ),
	(4, 'Kessia', 'kessia@gmail.com');
GO

INSERT INTO Emprestimo VALUES --id_emprestimo, id_livro, id_leitor, data_empr, data_dev
	(1, 5, 1, '2025-09-02', '2025-09-09'), -- Thiago pegou harry potter
	(2, 4, 4, '2025-08-27', '2025-09-05'), -- kessia pegou o sonho de uma noite
	(3, 1, 2, '2025-05-01', '2025-06-10'); --caique pegou Dom casmurro
GO

*/

--Exer 1

-- Maximo de livros
SELECT COUNT(id_Livro) AS Total_DE_Livros 
FROM Livro


--media dos anos entre os livros
SELECT AVG(ano) AS MediaAno
FROM Livro


SELECT  * FROM Emprestimo
SELECT * FROM Livro
SELECT * FROM Leitor
SELECT * FROM Autor

-- Mostrar quantidade de emprestimos de forma crescente (todos realizaram apenas um
SELECT id_leitor, COUNT(*) AS QuantidadeEmprestimos
FROM Emprestimo
GROUP BY id_leitor
ORDER BY QuantidadeEmprestimos ASC



-- COUNT - contar o total de registros // Tabelas

SELECT * FROM Leitor;

SELECT COUNT(*)
FROM Leitor;

SELECT * FROM Emprestimo;


/*
SELECT l.nome, COUNT(e.id_emprestimo) AS QntdEmprestimo
FROM Emprestimo e
JOIN Leitor l ON l.idLeitor = e.id_Leitor
GROUP BY l.nome
*/


--exer2

--Mostra o nome com apenas as tres primeiras letras dos livros

SELECT SUBSTRING(Nome, 1, 3) AS Livros_First3L
FROM Autor

SELECT * FROM Livro

SELECT REPLACE(Título, 'estrela', 'sol')
FROM Livro

SELECT nome, email FROM Leitor
WHERE email LIKE '%.com'



--Exer3
--Funcoes data

SELECT data_emprestimo AS Emprestimo_em_Agosto
FROM Emprestimo
WHERE data_emprestimo LIKE '%8%' 

SELECT DATEDIFF(DAY, min(data_emprestimo),  GETDATE())  AS DataPrimeiroEmprestimo
FROM Emprestimo

SELECT TOP 1 id_emprestimo, FORMAT(data_Emprestimo, 'dd-MM-yyyy') AS DataEmprestimo,
DATENAME(WEEKDAY, data_emprestimo) AS Dia
FROM Emprestimo
ORDER BY data_emprestimo ASC

--exer4

SELECT CHARINDEX('C', Nome) AS Comeca_Com_C_Leitor FROM Leitor
SELECT * FROM Leitor
WHERE Nome LIKE 'C%'

SELECT * FROM Emprestimo
WHERE YEAR(data_Emprestimo) = 2025
AND data_Devolucao IS NULL

SELECT * FROM Emprestimo

SELECT id_Livro, Título, Ano, id_Autor
FROM Livro
WHERE ano BETWEEN 1950 AND 2005 

AND
id_Autor NOT LIKE 3

SELECT A.id_Autor, A.nome
FROM Autor A
LEFT JOIN Livro L ON A.id_Autor = L.id_Autor
WHERE L.id_Livro IS NULL; -- Todos possuem






--Mostra o nome com todas as LETRAS MAIUSCULAS
SELECT UPPER(Nome) AS T_maiusculo FROM Autor

-- MIN y MAX
SELECT MIN(Ano) AS MenorAno  FROM Livro;
SELECT MAX(Ano) AS MaiorAno  FROM Livro;


--FUNCOES DE TEXTO

-- LENGHT = retorna tamanho

SELECT LEN('Késsia') AS TamanhoString
SELECT nome, LEN(nome) AS MaximoCaracteres FROM AUTOR


-- UPPER, adivinha??

SELECT UPPER(nome) AS Sim FROM Leitor; 
SELECT LOWER(email) FROM Leitor;

-- LEFT RIGHT

SELECT  * FROM Livro;

SELECT LEFT(Título, 5) AS Primeiros5 FROM Livro
SELECT RIGHT(título, 5) AS Ultimos5 FROM Livro


Select * FROM Leitor
-- 4 

--trocar palavra
SELECT REPLACE(titulo, 'Harry', 'Hermione')
FROM Livro;

SELECT * FROM Livro

SELECT REPLACE(Título, 'estrela', 'sol')
FROM Livro

-- CHARINDEX
-- Localizar a posicao de alguma palavara

SELECT Título, CHARINDEX('de', Título) AS Posicao_Texto
FROM Livro;




--CONCAT
--CONCATER Textos 

SELECT CONCAT('Empréstimo', e.id_Emprestimo,' - Leitor: ', le.nome, ' -Livro: ', li.titulo) 
FROM Emprestimo e
JOIN Leitor le ON le.id_Leitor = e.id_Leitor
JOIN Livro li ON li.id_Livro = e.id_Livro;


--SUBSTRING
--Mostra o texto conforme o tamanho passado
 SELECT SUBSTRING(Título, 1, 10) AS Sim
 FROM Livro;
 SELECT * FROM Livro



--RTRIM(Direito) ; LTRIM(esquerda); TRIM(dos dois lados)
SELECT Nome, RTRIM(nome) AS RTRIM, LTRIM(nome), TRIM(nome)
FROM Leitor;


--Funcoes de DATA e hora

--GETDATE
--Dia e horario atual
SELECT GETDATE() AS DataAtual;
SELECT SYSDATETIMEOFFSET()
AT TIME ZONE 'E. South America Standard Time';

--DATEADD
/*

Adiciona um tempo a mais dentro de uma data
YEAR: Ano, MONTH: MES, DAY: DIA, WEEK: SEMANA

*/

SELECT * FROM Emprestimo

SELECT id_Emprestimo, data_emprestimo,
DATEADD(YEAR, 7, data_emprestimo) AS PrevisaoDevolucao
FROM Emprestimo;

SELECT 


--Diminuir o tempo
SELECT id_Emprestimo, data_emprestimo, 
DATEADD(MONTH, -1, data_emprestimo) AS PrevisaoDevolucao
FROM Emprestimo;

--DATEDIFF - Diferenca entre datas
SELECT id_emprestimo, data_emprestimo, data_devolucao,
DATEDIFF(DAY, data_emprestimo, ISNULL(data_devolucao, GETDATE())) AS PrevisaoDevolucao
FROM Emprestimo
-- IF(data_devolucao == Null) for(GETDATE = 0; GETDATE >= Null; GETDATE++;) 
--else(print)




--FORMAT: FORMATAR DATAS

SELECT * FROM Emprestimo

SELECT
FORMAT(data_emprestimo, 'dd-MM-yyyy') AS Emprestimo,
FORMAT(data_devolucao, 'dd-MM-yyyy') AS Devolucao
FROM Emprestimo;


--Extrair ano, mes e dia de uma data
SELECT YEAR(data_emprestimo) AS ANO,
MONTH(data_emprestimo) AS Mes,
DAY(data_emprestimo) AS Dia
FROM Emprestimo

--DATEPART y DATENAME

SELECT 
DATEPART(YEAR, data_emprestimo) AS ano,
DATEPART(MONTH, data_emprestimo) AS mes,
DATEPART(WEEKDAY, data_emprestimo) AS DiaSemana,
DATENAME(WEEKDAY, data_emprestimo) AS NomeDiaSemana,
DATENAME(MONTH, data_emprestimo) AS NomeMes
FROM Emprestimo;

--alterar idioma
SET LANGUAGE Portuguese;

--Operadores de comparacao


--igualdade =

SELECT titulo, ano
FROM Livro
WHERE ano = 2000;

--diferente NOT LIKE

SELECT nome, email
FROM Leitor
WHERE email NOT LIKE 'kes%'


--eh preconceitoso, se nao for alguem que ele goste comeca a excluilo

SELECT titulo, ano FROM Livro 
WHERE ano <> 2000;

SELECT * FROM Livro





SELECT titulo, ano
FROM Livro 
WHERE ano > 1900

-- menor que 
SELECT titulo, ano, 
FROM Livro
WHERE ano < 2000;

SELECT id_emprestimo, data_emprestimo
FROM Emprestimo
WHERE data_emprestimo <= '2025-09-01';


--operadores logicos
--AND (E)

SELECT
Emprestimo.id_emprestimo, Leitor.nome,
Emprestimo.data_emprestimo, Emprestimo.data_devolucao
FROM Emprestimo
JOIN Leitor ON Leitor.id_Leitor = Emprestimo.id_Leitor
WHERE 
MONTH(Emprestimo.data_emprestimo) = 9
AND
YEAR(Emprestimo.data_emprestimo) = 2025

--Duas condicoes verdadeiras


-- || (ou) OR

SELECT L.titulo, L.ano, A.nome
FROM Livro L
JOIN Autor A ON A.id_Autor = L.id_Autor
WHERE 
A.nome = 'Machado de Assis'
OR
A.nome = 'Clarice Lispector'

--Se um tiver V ja nao vai retornar NaN || Null

-- NOT (negacao)

SELECT L.titulo, L.ano, A.nome
FROM Livro L
JOIN Autor A ON A.id_Autor = L.id_Autor
WHERE
NOT A.nome = 'Shakespeare'


--Operadores Especiais

--BETWEEN (entre)

SELECT titulo, Ano
FROM Livro
WHERE
ano BETWEEN 1800 AND 2000;


-- IN (verifica um alista de valores)

SELECT * FROM Autor
WHERE Nome IN ('Machado De Assis', 'Shakespeare');


--LIKE 
SELECT Titulo FROM Livro
WHERE Titulo LIKE 'O%';
-- (%O = Existe texto antes da letra) (O% = Existe texto depois da letra) (%O% = Existe texto antes e depois da letra



-- IS NULL
-- Retorna registros vazios
SELECT Id_Emprestimo, Id_Livro, Data_emprestimo
FROM Emprestimo 
WHERE data_devolucao IS NULL;

SELECT ID_emprestimo, ID_Livro, data_emprestimo
FROM Emprestimo
WHERE data_devolucao IS NOT NULL;