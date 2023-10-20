CREATE DATABASE db_empresa

USE db_empresa

 

CREATE TABLE tblDepartamento (

	nome		CHAR (100)		      NOT NULL,

	numero		INT IDENTITY(1,1) NOT NULL,

	rgGerente	VARCHAR (8)		  NOT NULL


	PRIMARY KEY(numero)

)

 

INSERT INTO tblDepartamento (nome, rgGerente) VALUES

('Contabilidade', '10101010'),

('Engenharia civil', '20202020'),

('Engenharia mecanica', '30303030')

 

SELECT * FROM tblDepartamento

 
 DROP TABLE tblEmpregado
 

CREATE TABLE tblEmpregado (

	nome			CHAR(100)		NOT NULL,

	rg				VARCHAR(10)		NOT NULL,

	cic				VARCHAR(10)				NOT NULL,

	depto			INT				NOT NULL,

	rgSupervisor	VARCHAR (10)	NOT NULL,

	salario         VARCHAR (8)		NOT NULL

	PRIMARY KEY(cic),
	FOREIGN KEY (depto) REFERENCES tblDepartamento(numero),
)

INSERT INTO tblEmpregado(nome, rg, cic, depto, rgSupervisor, salario) VALUES
('Jo�o Luiz', '101010101', 1111111111, 1, 'NULL', '3.000.00'),
('Fernando', '202020202', 2222222222, 2, '10101010', '2.500.00'), 
('Ricardo', '303030303', 3333333333, 2, '10101010', '2.300.00'), 
('Jorge', '404040404', 4444444444, 2, '20202020', '4.200.00'), 
('Renato', '505050505', 5555555555, 3, '20202020', '1.300.00') 


SELECT * FROM tblEmpregado

SELECT nome AS 'Nome', 
	   SUBSTRING(CAST(rg AS VARCHAR(10)), 1, 2) + '.' + SUBSTRING(CAST(rg AS VARCHAR(8)), 3, 3) + '.' + SUBSTRING(CAST(rg AS VARCHAR(8)),6,3) + '-' + 'X' AS 'RG',
	   SUBSTRING(CAST(cic AS VARCHAR(10)), 1, 3) + '.' +SUBSTRING(CAST(cic AS VARCHAR(8)),3,3) + '.' + SUBSTRING(CAST(cic AS VARCHAR(8)	),6,2) + 'X-XX' AS 'CPF' 
FROM tblempregado ORDER BY CPF DESC;