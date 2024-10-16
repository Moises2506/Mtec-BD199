CREATE DATABASE bd_sptrans;
USE bd_sptrans;
 
CREATE TABLE tbMotorista (
    idMotorista INT PRIMARY KEY,
    nomeMotorista VARCHAR(100) NOT NULL,
    dataNascimentoMotorista DATE NOT NULL,
    cpfMotorista VARCHAR(14) NOT NULL UNIQUE,
    CNHMotorista VARCHAR(20) NOT NULL,
    pontuacaoAcumulada INT
);
 
CREATE TABLE tbVeiculo (
    idVeiculo INT PRIMARY KEY,
    modeloVeiculo VARCHAR(100) NOT NULL,
    placa VARCHAR(10) NOT NULL UNIQUE,
    renavam VARCHAR(20) NOT NULL UNIQUE,
    anoVeiculo INT NOT NULL,
    idMotorista INT,
    FOREIGN KEY (idMotorista) REFERENCES tbMotorista(idMotorista)
);
 
CREATE TABLE tbMultas (
    idMulta INT PRIMARY KEY,
    dataMulta DATE NOT NULL,
    horaMulta TIME NOT NULL,
    pontosMulta INT NOT NULL,
    idVeiculo INT,
    FOREIGN KEY (idVeiculo) REFERENCES tbVeiculo(idVeiculo)
);



INSERT INTO tbMotorista (idMotorista, nomeMotorista, dataNascimentoMotorista, cpfMotorista, CNHMotorista, pontuacaoAcumulada)
VALUES 
(1, 'João Silva', '1985-05-15', '123.456.789-00', 'ABC1234567', 0),
(2, 'Maria Oliveira', '1990-08-22', '987.654.321-00', 'XYZ9876543', 0)

INSERT INTO tbVeiculo (idVeiculo, modeloVeiculo, placa, renavam, anoVeiculo, idMotorista)
VALUES 
(1, 'Volkswagen Gol', 'ABC-1234', '12345678901', 2015, 1),
(2, 'Fiat Uno', 'XYZ-9876', '98765432109', 2018, 2)

INSERT INTO tbMultas (idMulta, dataMulta, horaMulta, pontosMulta, idVeiculo)
VALUES 
(1, '2024-10-01', '08:30:00', 5, 1),
(2, '2024-10-05', '14:45:00', 3, 2)