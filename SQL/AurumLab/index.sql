CREATE DATABASE AurumLab;
GO

USE AurumLab;

CREATE TABLE Regra
(
ID_Regra INT IDENTITY(0,1) PRIMARY KEY,
NOME VARCHAR(40) NOT NULL UNIQUE

);

GO

CREATE TABLE Usuario
(ID_Usuario INT IDENTITY(1,1) PRIMARY KEY,
NomeCompleto NVARCHAR(99) NOT NULL,
Email NVARCHAR(99) NOT NULL UNIQUE,
Senha VARBINARY(32) NOT NULL, --Armazena a hash da senha.
FotoURL NVARCHAR(999) NULL, --Armazena o caminho da URL da imagem.
CriadoEm DATETIME2(0) NOT NULL DEFAULT DATEADD(HOUR, -3, SYSUTCDATETIME()), -- Default = Padronizacao de quando o usuario nao insere nada 
--zero casas decimais de segundo
Regra_ID INT NOT NULL,
CONSTRAINT FK_Usuario_Regra FOREIGN KEY (Regra_ID) REFERENCES Regra(ID_Regra)
);
GO


