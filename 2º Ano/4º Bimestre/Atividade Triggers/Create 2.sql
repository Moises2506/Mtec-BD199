CREATE DATABASE db_BancoQualquer
USE db_BancoQualquer

CREATE TABLE tbCliente (
    codCliente INT PRIMARY KEY,
    nomeCliente VARCHAR(100) NOT NULL,
    cpfCliente VARCHAR(14) NOT NULL 
);

CREATE TABLE tbContaCorrente (
    numConta INT PRIMARY KEY,
    saldoConta DECIMAL(10, 2) NOT NULL,
    codCliente INT,
    FOREIGN KEY (codCliente) REFERENCES tbCliente(codCliente)
);

CREATE TABLE tbDeposito (
    codDeposito INT PRIMARY KEY,
    valorDeposito DECIMAL(10, 2) NOT NULL,
    numConta INT,
    dataDeposito DATE NOT NULL,
    horaDeposito TIME NOT NULL,
    FOREIGN KEY (numConta) REFERENCES tbContaCorrente(numConta)
);

CREATE TABLE tbSaque (
    codSaque INT PRIMARY KEY,
    valorSaque DECIMAL(10, 2) NOT NULL,
    numConta INT,
    dataSaque DATE NOT NULL,
    horaSaque TIME NOT NULL,
    FOREIGN KEY (numConta) REFERENCES tbContaCorrente(numConta)
);




INSERT INTO tbCliente (codCliente, nomeCliente, cpfCliente)
VALUES (1, 'Ana Souza', '123.456.789-00');


INSERT INTO tbContaCorrente (numConta, saldoConta, codCliente)
VALUES (1001, 1500.00, 1);


INSERT INTO tbDeposito (codDeposito, valorDeposito, numConta, dataDeposito, horaDeposito)
VALUES (1, 500.00, 1001, '2024-10-15', '10:30:00');


INSERT INTO tbSaque (codSaque, valorSaque, numConta, dataSaque, horaSaque)
VALUES (1, 200.00, 1001, '2024-10-17', '09:00:00');

