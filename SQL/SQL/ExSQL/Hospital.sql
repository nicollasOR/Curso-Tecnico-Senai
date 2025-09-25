CREATE DATABASE Hospital2;
GO --Executa cada linha, uma por vez
USE Hospital2

CREATE TABLE Pacientes1
(
 CPF VARCHAR(50) PRIMARY KEY,
 Nome VARCHAR(40), 
 Telefone VARCHAR(30),
 NumeroPlano INT,
 NomePlano NVARCHAR(20), 
 TipoPlano NVARCHAR(10)
);
GO

CREATE TABLE Medicos1
( 
CRM INT PRIMARY KEY,
NomeMedico NVARCHAR(30),
Especialidade NVARCHAR(20)
);
GO

CREATE TABLE Consultas1
(
   NumeroConsulta INT PRIMARY KEY IDENTITY(100, 1), --
   DataConsulta DATE,
   HorarioConsulta TIME,
   CRM_Medico INT FOREIGN KEY references Medicos1(CRM), --ele pega um dado que seja de uma outra tabela, sendo ele, crm
   CPF_Paciente VARCHAR(50) FOREIGN KEY references Pacientes1(CPF)
);

SELECT * FROM Pacientes1;
SELECT * FROM Medicos1;
SELECT * FROM Consultas1;
