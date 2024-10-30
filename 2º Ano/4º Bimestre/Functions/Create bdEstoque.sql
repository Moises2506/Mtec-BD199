CREATE DATABASE dbEstoque2

USE dbEstoque2

CREATE TABLE tblFabricante (
    codFabricante INTEGER NOT NULL IDENTITY(1,1),
    nomeFabricante VARCHAR(255) NOT NULL,
    PRIMARY KEY(codFabricante)
)

CREATE TABLE tblFornecedor (
    codFornecedor INTEGER NOT NULL IDENTITY(1,1),
    nomeFornecedor VARCHAR(255) NOT NULL,
    contatoFornecedor VARCHAR(255) NOT NULL,
    PRIMARY KEY(codFornecedor)
)

CREATE TABLE tblProduto (
    codProduto INTEGER NOT NULL IDENTITY(1,1),
    descricaoProduto VARCHAR(255) NOT NULL,
    valorProduto FLOAT NOT NULL,
    quantidadeProduto INTEGER NOT NULL,
    codFabricante INTEGER NOT NULL,
    codFornecedor INTEGER NOT NULL,
    FOREIGN KEY (codFabricante) REFERENCES tblFabricante(codFabricante),
    FOREIGN KEY (codFornecedor) REFERENCES tblFornecedor(codFornecedor),
    PRIMARY KEY(codProduto)
)

CREATE TABLE tblCliente (
    codCliente INTEGER NOT NULL IDENTITY(1,1),
    nomeCliente VARCHAR(255) NOT NULL,
    cpfCliente VARCHAR(11) NOT NULL,  -- Ajuste no tamanho do CPF
    emailCliente VARCHAR(255) NOT NULL,
    sexoCliente VARCHAR(1) NOT NULL,
    dataNascimentoCliente DATE NOT NULL,
    PRIMARY KEY(codCliente)
)

CREATE TABLE tblVenda( 
    codVenda INTEGER NOT NULL IDENTITY(1,1),
    dataVenda DATE NOT NULL,
    valorTotalVenda FLOAT NOT NULL,
    codCliente INTEGER NOT NULL,
    FOREIGN KEY (codCliente) REFERENCES tblCliente(codCliente),
    PRIMARY KEY(codVenda)
)

CREATE TABLE tblItensVenda (
    codItensVenda INTEGER NOT NULL IDENTITY(1,1),
    codVenda INTEGER NOT NULL,
    codProduto INTEGER NOT NULL,
    quantidadeitensVenda INTEGER NOT NULL,
    subTotalItensvenda FLOAT NOT NULL,
    FOREIGN KEY (codVenda) REFERENCES tblVenda(codVenda),
    FOREIGN KEY (codProduto) REFERENCES tblProduto(codProduto),
    PRIMARY KEY(codItensVenda)
)

INSERT INTO tblCliente(nomeCliente, cpfCliente, emailCliente, sexoCliente, dataNascimentoCliente)
VALUES
('Amando José Santana', '12345678900', 'amandojosesantana@outlook.com', 'm', '1961-02-21'),
('Sheila Carvalho Leal', '45678907823', 'scarvalho@ig.com.br', 'f', '1978-09-13'),
('Carlos Henrique Souza', '76598278299', 'chenrique@ig.com.br', 'm', '1981-09-08'),
('Maria Aparecida Souza', '87365309388', 'mapdasouza@outlook.com', 'f', '1977-04-09'),
('Adriana Nogueira Silva', '76354309388', 'drica1977@ig.com.br', 'f', '1977-04-09'),
('Paulo Henrique Silva', '87390123111', 'phsilva80@hotmail.com', 'm', '1987-02-02')

INSERT INTO tblFabricante(nomeFabricante) 
VALUES
('Unilever'),
('P&G'),
('Bunge')

INSERT INTO tblFornecedor(nomeFornecedor, contatoFornecedor)
VALUES
('Atacadão', 'Carlos Santos'),
('Assai', 'Maria Stella'),
('Roldão', 'Paulo César')

INSERT INTO tblProduto(descricaoProduto, valorProduto, quantidadeProduto, codFabricante, codFornecedor)
VALUES 
('Amaciante Downy', 5.76, 1500, 2, 1),
('Amaciante Confort', 4.45, 2300, 1, 1),
('Sabão em pó OMO', 5.99, 1500, 1, 2),
('Margarina Qualy', 4.76, 2500, 3, 1),
('Salsicha Hot Dog Sadia', 6.78, 2900, 3, 2),
('Mortadela Perdigão', 2.50, 1200, 3, 3),
('Hamburguer Sadia', 9.89, 1600, 3, 1),
('Fralda Pampers', 36.00, 340, 2, 3),
('Xampu Seda', 5.89, 800, 1, 2),
('Condicionador Seda', 6.50, 700, 1, 3)

INSERT INTO tblVenda(dataVenda, valorTotalVenda, codCliente)
VALUES 
('2014-02-01', 4500.00, 1),
('2014-02-03', 3400.00, 1),
('2014-02-10', 2100.00, 2),
('2014-02-15', 2700.00, 3),
('2014-03-17', 560.00, 3),
('2014-04-09', 1200.00, 4),
('2014-05-07', 3500.00, 5),
('2014-05-07', 3400.00, 1),
('2014-05-05', 4000.00, 2)

INSERT INTO tblItensVenda(codVenda, codProduto, quantidadeitensVenda, subTotalItensvenda) 
VALUES
(1, 1, 200, 1500.00),
(1, 2, 300, 3000.00),
(2, 4, 120, 1400.00),
(2, 2, 200, 1000.00),
(2, 3, 130, 1000.00),
(3, 5, 200, 2100.00),
(4, 4, 120, 1000.00),
(4, 5, 450, 700.00),
(5, 5, 200, 560.00),
(6, 7, 200, 600.00),
(6, 6, 300, 600.00),
(7, 1, 300, 2500.00),
(7, 2, 200, 1000.00),
(8, 6, 250, 1700.00),
(8, 5, 200, 1700.00),
(9, 4, 1000, 4000.00)
