--Apagar o database ja existente
drop database Empresa;

--cria um novo database

create database Empresa;


--acessar base de dados criada
use Empresa

-- criar tabela funcionario
CREATE TABLE Funcionario2(
 Codigo INT PRIMARY KEY,
 Nome	NVARCHAR(100)
 );

 --inserindo valores em uma tabela
 INSERT INTO Funcionario2(Codigo, Nome)
 --Tem duas formas de executar, sendo essa:
 VALUES
 (1, 'ratao'),
 (2, 'Lula')


 -- e dessa forma
 INSERT INTO Funcionario2 VALUES
 (3, 'moises')


 --Listar dados inseridos
 SELECT * FROM Funcionario2;

 SELECT Nome, Codigo FROM Funcionario2;

 --listar funcionario com codigo > 2
 SELECT * FROM Funcionario2
 WHERE Codigo > 2


 --Listar Funcionarios que comecem com a letra T
 SELECT * FROM Funcionario2
 WHERE Nome LIKE 'M%';


 --ordenar valores
 SELECT * FROM Funcionario2
 ORDER BY Codigo DESC

 SELECT * FROM Funcionario2
 ORDER BY Nome ASC

 -- DESC = Decrescente
 --ASC = Crescente
 
 --atulizacao de registros

 UPDATE Funcionario2 SET Nome = 'mouses'
 WHERE Nome = 'moises';

 SELECT * FROM Funcionario2 


 -- Exclusao de dados

 DELETE FROM Funcionario2
 WHERE CODIGO = 1

 SELECT * FROM Funcionario2