CREATE DATABASE LojaXVI;
GO
USE LojaXVI;
GO
CREATE TABLE Cliente
(
Cliente_ID INT IDENTITY(100, 1),
Nome NVARCHAR (50) NOT NULL,
Email NVARCHAR (100) UNIQUE,
--Cria uma regra para um atributo
--Nessa regra ele cria um nome para um atributo ja existente
CONSTRAINT PK_Cliente PRIMARY KEY(Cliente_ID)
);

GO
CREATE TABLE OPedido1
(
Pedido1_ID INT IDENTITY(100, 1),
DataPedido1 DATE NOT NULL,
Valor1 DECIMAL(10,2),
Cliente1_ID INT,
CONSTRAINT Pk_Pedido PRIMARY KEY (Pedido1_ID),
CONSTRAINT Fk_Pedido FOREIGN KEY (Cliente1_ID) REFERENCES Cliente(Cliente_ID) -- ON DELETE Cascade
);


INSERT INTO Cliente 
VALUES
('Thiago Augusto', 'titi@senai.com'),
('Kessia Milena', 'kessia@senai.com'),
('Odirlei Sabella', 'odirlei@senai.com');
GO

INSERT INTO OPedido1
VALUES
('2025-10-01', '100.80', 100),
('2025-09-10', '49.99', 100),
('2025-09-23', '350', 101)


SELECT * FROM Cliente;
SELECT * FROM OPedido1;

--Atualizar o cliente

UPDATE Cliente SET Email = 'kessia@senai.com'
WHERE Cliente_ID = 101;

--Atualizar o valor de um peedido
SELECT * FROM OPedido1;
UPDATE OPedido1 SET Valor1 = Valor1 + '10.00'
WHERE Pedido1_ID = 101
SELECT * FROM OPedido1;


--Renomear o nome de uma tabela
EXEC SP_Rename 'Cliente', 'Funcionario';

SELECT * FROM Cliente;
SELECT * FROM Funcionario;

--Renomear a coluna ClienteID ---> FuncionariosID

EXEC Sp_Rename  'Funcionario.Cliente_ID', 'FuncionarioID', 'Column';


--Alterar tamanho do tipo de dado
ALTER TABLE Funcionario
ALTER COLUMN Nome VARCHAR(150) NOT NULL;

--Ver a estrtutura da tabela
EXEC sp_help 'Funcionario';

--Apagando a chave primaria da tabela pedido

ALTER TABLE OPedido1
DROP CONSTRAINT PK_Pedido;

SELECT * FROM OPedido1;

--Recriando a chave primaria 
ALTER TABLE OPedido1
ADD CONSTRAINT PK_Pedido PRIMARY KEY (Pedido1_ID)

--Alterar tabela Pedido
-- ON DELETE CASCADE

ALTER TABLE OPedido1
DROP CONSTRAINT FK_Pedido

--Recriar FK com ON DELETE CASCADE
ALTER TABLE OPedido1
ADD CONSTRAINT FK_Pedido_Cliente FOREIGN KEY (Cliente1_ID) REFERENCES Funcionario(FuncionarioID)
ON DELETE CASCADE

SELECT * FROM Funcionario;

-- Adicionar Novas colunas 

ALTER TABLE Funcionario
ADD Cargo VARCHAR(50)
SELECT * FROM Funcionario

SELECT * FROM Funcionario;