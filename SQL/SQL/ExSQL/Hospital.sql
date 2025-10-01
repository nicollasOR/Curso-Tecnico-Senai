CREATE DATABASE Hospital2;
GO --Executa cada linha, uma por vez
USE Hospital2

CREATE TABLE Pacientes12
(
 CPF VARCHAR(50) PRIMARY KEY,
 Nome VARCHAR(40), 
 Telefone VARCHAR(30),
 NumeroPlano INT,
 NomePlano NVARCHAR(20), 
 TipoPlano NVARCHAR(10)
);
GO

CREATE TABLE Medicos12
( 
CRM INT PRIMARY KEY,
NomeMedico NVARCHAR(30),
Especialidade NVARCHAR(20)
);
GO

CREATE TABLE Consultas12
(
   NumeroConsulta INT PRIMARY KEY IDENTITY(100, 1), --
   DataConsulta DATE,
   HorarioConsulta TIME,
   CRM_Medico INT FOREIGN KEY references Medicos1(CRM), --ele pega um dado que seja de uma outra tabela, sendo ele, crm
   CPF_Paciente VARCHAR(50) FOREIGN KEY references Pacientes1(CPF)
);

SELECT * FROM Pacientes12;
SELECT * FROM Medicos12;
SELECT * FROM Consultas12;


--visualizar informacoes das colunas da tabela
SELECT * FROM sys.columns
WHERE object_id = OBJECT_ID('Medicos12');
--visualizar os tipos de dados do sistema
SELECT * FROM sys.types;


--Consulta de todos juntos com JOIN
SELECT tabelas.name AS Tabela,
colunas.name AS Coluna,
tipo.name AS Tipo,
colunas.max_length AS Tamanho,
colunas.is_nullable AS PermiteNulo 
FROM  sys.tables AS tabelas
JOIN sys.columns AS colunas ON tabelas.object_id = colunas.object_id
JOIN sys.types tipo ON colunas.user_type_id = tipo.user_type_id
ORDER BY tabelas.name, colunas.column_id


SELECT * FROM INFORMATION_SCHEMA.COLUMNS