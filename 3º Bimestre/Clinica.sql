CREATE DATABASE db_Clinica;
USE db_Clinica;

 

CREATE TABLE tbl_usuario (
    numeroBeneficiario  INT IDENTITY(1,1),
    nome                VARCHAR(50) NOT NULL,
    endereco            VARCHAR(150) NOT NULL,
    telefone            VARCHAR(18) NOT NULL,
    doencaPrev          CHAR(150) NOT NULL,
    remedioUsoContinuo  CHAR(90) NOT NULL
	PRIMARY KEY(numeroBeneficiario)
)

 

INSERT INTO tbl_usuario (nome, endereco, telefone, doencaPrev, remedioUsoContinuo)
VALUES
('Jader', 'R. Igarap� �gua Azul', '+55 (11) 982746524', 'Asma', 'Nenhum'),
('Jader', 'R. Igarap� �gua Azul', '+55 (11) 125463297', 'Rinite', 'Nenhum'),
('Jader', 'R. Igarap� �gua Azul', '+55 (11) 125463297', 'Sinusite', 'Nenhum'),
('Jader', 'R. Igarap� �gua Azul', '+55 (11) 125463297', 'Rinite', 'Nenhum'),
('Jader', 'R. Igarap� �gua Azul', '+55 (11) 125463297', 'Rinite', 'Nenhum')

 

 

DROP TABLE tblEspecialidade
CREATE TABLE tblEspecialidade (
    numeroRegistro  INT IDENTITY(1,7) NOT NULL ,
    nome            CHAR(50) NOT NULL,
    publicoAlvo     CHAR(100) NOT NULL
	PRIMARY KEY(numeroRegistro)
)

 

INSERT INTO tblEspecialidade (nome, publicoAlvo)
VALUES
('Ortopedista', 'Público com complicações nos ossos'),
('Ortopedista', 'Público com complicações nos ossos'),
('Ortopedista', 'Público com complicações nos ossos'),
('Ortopedista', 'Público com complicações nos ossos'),
('Ortopedista', 'Público com complicações nos ossos')

 

DROP TABLE tblMedico
CREATE TABLE tblMedico (
    crm             VARCHAR(12),
    nome            CHAR(50) NOT NULL,
    endereco        VARCHAR(150) NOT NULL,
    telefone        VARCHAR(18) NOT NULL,
    especialidade   INT 
    FOREIGN KEY (especialidade) REFERENCES tblEspecialidade(numeroRegistro),
	PRIMARY KEY(crm)
)

 

INSERT INTO tblMedico (crm, nome, endereco, telefone, especialidade)
VALUES
('CRM/SP465269', 'Everson Willian Bacelli', 'Avenida Paulista 234', '+55 (11) 312465798', 1),
('CRM/SP478269', 'Everson Willian Bacelli', 'Avenida Paulista 234', '+55 (11) 312465798', 8),
('CRM/SP463269', 'Everson Willian Bacelli', 'Avenida Paulista 234', '+55 (11) 312465798', 15),
('CRM/SP464269', 'Everson Willian Bacelli', 'Avenida Paulista 234', '+55 (11) 312465798', 22),
('CRM/SP460269', 'Everson Willian Bacelli', 'Avenida Paulista 234', '+55 (11) 312465798', 29)

 

CREATE TABLE tblAgendamento (
    numeroAgendamento   INT IDENTITY(1,43) PRIMARY KEY,
    dma                 DATE NOT NULL,
    hora                VARCHAR(5) NOT NULL,
    queixa              CHAR(100) NOT NULL,
    gravidade           CHAR(50) NOT NULL
)


DROP TABLE tblAgendamento


INSERT INTO tblAgendamento (dma, hora, queixa, gravidade)
VALUES
('2023-09-23', '12:20', 'Dengue', 'Alta'),
('2023-09-23', '12:20', 'Dengue', 'Alta'),
('2023-09-23', '12:20', 'Dengue', 'Alta'),
('2023-09-23', '12:20', 'Dengue', 'Alta'),
('2023-09-23', '12:20', 'Dengue', 'Alta')

 

DROP TABLE tblConsulta


CREATE TABLE tblConsulta (
    numeroConsulta      INT IDENTITY(1,167) PRIMARY KEY,
    dma                 DATE NOT NULL,
    hora                TIME NOT NULL,
    numeroAgendamento   INT, 
    crm                 VARCHAR(12) NOT NULL,
    numeroBeneficiario  INT  
    FOREIGN KEY (numeroAgendamento) REFERENCES tblAgendamento(numeroAgendamento),
    FOREIGN KEY (crm) REFERENCES tblMedico(crm),
    FOREIGN KEY (numeroBeneficiario) REFERENCES tbl_usuario(numeroBeneficiario)
)

 

INSERT INTO tblConsulta (dma, hora, numeroagendamento, crm, numeroBeneficiario)
VALUES
('2023-08-23', '12:20', 1 , 'CRM/SP465269', 1 ),
('2023-09-23', '12:20', 44 , 'CRM/SP478269', 2 ),
('2023-09-23', '12:20', 87 , 'CRM/SP463269' ,3 ),
('2023-09-23', '12:20', 130 , 'CRM/SP464269',4 ),
('2023-09-23', '12:20', 173 ,'CRM/SP460269', 5 )

 

SELECT * FROM tblAgendamento;
SELECT * FROM tblConsulta;
SELECT * FROM tblEspecialidade;
SELECT * FROM tblMedico;
SELECT * FROM tbl_usuario;