CREATE DATABASE TurismoTuring;
GO

USE TurismoTuring
GO
CREATE TABLE Agencia
(
ID_ag INT PRIMARY KEY IDENTITY(10,1),
Nome NVARCHAR(100) UNIQUE NOT NULL
);
GO




SELECT * FROM Agencia;
CREATE TABLE Pacote
(
 ID_pac INT PRIMARY KEY IDENTITY(1,1),
 Titulo NVARCHAR(100) NOT NULL,
 ID_AG INT FOREIGN KEY REFERENCES Agencia(ID_ag)
);
GO

SELECT * FROM Pacote;

DELETE FROM Pacote
WHERE ID_pac BETWEEN 31 AND 40;


CREATE TABLE Cliente
(
ID_cli INT PRIMARY KEY IDENTITY(100,1),
Nome NVARCHAR(100) NOT NULL,
Email NVARCHAR(200) UNIQUE NOT NULL
);
GO
SELECT * FROM Cliente;
CREATE TABLE Reserva
(
ID_res_R INT PRIMARY KEY IDENTITY(1000,1),
ID_pac_R INT FOREIGN KEY REFERENCES Pacote(ID_pac),
ID_cli_R INT FOREIGN KEY REFERENCES Cliente(ID_cli),
Datinha DATE NOT NULL
);
GO

INSERT INTO Agencia(Nome)
VALUES
('Agência Central'),
('Agência Norte'),
('Agência Sul'),
('Agência Leste'),
('Agência Oeste'),
('Agência Paulista'),
('Agência Rio de Janeiro'),
('Agência Belo Horizonte'),
('Agência Curitiba'),
('Agência Porto Alegre');
GO

INSERT INTO Pacote(Titulo, ID_AG)
VALUES
('Pacote Férias no Nordeste', 17),
('Pacote Serra Gaúcha', 10),
('Pacote Amazônia Aventura', 18),
('Pacote Rio de Janeiro Clássico', 13),
('Pacote São Paulo Cultural', 11),
('Pacote Litoral Catarinense', 14),
('Pacote Minas Histórica', 15),
('Pacote Pantanal Selvagem', 19),
('Pacote Rota das Praias Nordestinas', 16), 
('Pacote Argentina e Chile', 12);
GO
SELECT * FROM Pacote;



INSERT INTO Cliente(Nome, Email)
VALUES
('João Silva', 'joao.silva@email.com'),
('Maria Oliveira', 'maria.oliveira@email.com'),
('Carlos Santos', 'carlos.santos@email.com'),
('Ana Souza', 'ana.souza@email.com'),
('Pedro Almeida', 'pedro.almeida@email.com'),
('Fernanda Costa', 'fernanda.costa@email.com'),
('Lucas Pereira', 'lucas.pereira@email.com'),
('Juliana Rocha', 'juliana.rocha@email.com'),
('Rafael Gomes', 'rafael.gomes@email.com'),
('Camila Nogueira', 'camila.nogueira@email.com');
GO

INSERT INTO Reserva(ID_pac_R, ID_cli_R, Datinha)
VALUES
(21, 100, '2025-01-10'), (22, 101, '2025-02-15'),
(23, 102, '2025-03-20'), (24, 103, '2025-04-25'),
(25, 104,'2025-05-30'), (26, 105, '2025-06-10'),
(27, 106,  '2025-07-05'), (28, 107, '2025-08-18'),
(29, 108, '2025-09-22'), (30, 109, '2025-10-12');

GO
--DELETE FROM Reserva
--WHERE ID_res_R BETWEEN 1000 AND 1009;

SELECT * FROM Reserva;

/*
CROSS JOIN
SELECT 
    r.Datinha, c.Nome AS NomeCliente, p.Titulo AS Pacote
FROM Reserva r
CROSS JOIN Cliente c
CROSS JOIN Pacote p;*/

SELECT r.Datinha, r.ID_pac_R, r.ID_cli_R,
      c.Nome AS NomeCliente, p.Titulo AS Pacote
      FROM Reserva r
      INNER JOIN Pacote p ON r.ID_pac_R = p.ID_pac
      INNER JOIN Cliente c ON r.ID_cli_R = c.ID_cli;
/*
LEFT JOIN
SELECT c.Nome AS ClienteNome, r.Datinha, p.Titulo
FROM Cliente c
LEFT JOIN Reserva r ON c.ID_cli = r.ID_cli_R
LEFT JOIN Pacote p ON r.ID_pac_R = p.ID_pac;
*/


/*
Mensagem 245, Nível 16, Estado 1, Linha 126
Falha ao converter o nvarchar valor 'joao.silva@email.com' para o tipo de dados int.
*/

--Renomeando colunas
EXEC SP_RENAME 'Reserva.ID_res_R', 'ID_Reserva', 'Column';
EXEC SP_RENAME 'Reserva.ID_cli_R', 'ID_R_cliente', 'Column';
EXEC SP_RENAME 'Reserva.ID_pac_R', 'ID_R_pacote', 'Column';
SELECT * FROM Reserva;


ALTER TABLE Agencia
DROP CONSTRAINT ID_ag;

/*
SELECT * FROM Agencia;
UPDATE Agencia SET ID_ag = ID_ag + 10
WHERE ID_ag = 17
*/
SELECT * FROM reserva

ALTER TABLE Agencia
DROP CONSTRAINT UQ__Agencia__7D8FE3B28C086B70;


SELECT * FROM Agencia
DELETE Agencia
WHERE Nome = 'Agência Porto Alegre';
--Deu erro por estar como foreign key em Pacote

ALTER TABLE Pacote
DROP CONSTRAINT FK__Pacote__ID_AG__4CA06362;

DELETE Pacote
WHERE ID_pac = 28;

DELETE Reserva
WHERE ID_Reserva = 1007;

--Recriando Foreign Key
--Para recriar, vc deve deletar a foreign key e as que utilizam dela, como a reserva com seu ID e o Pacote que possuam 
ALTER TABLE Pacote
ADD CONSTRAINT FK_Pacote_ID_AG
FOREIGN KEY (ID_AG) REFERENCES Agencia(ID_ag)
ON DELETE CASCADE;


SELECT * FROM Agencia
SELECT * FROM Pacote

SELECT * FROM Reserva

