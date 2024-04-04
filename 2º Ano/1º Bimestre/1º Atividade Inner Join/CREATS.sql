CREATE DATABASE db_estoque
USE db_estoque
 
CREATE TABLE tblFabricante (
    codFabricante INT PRIMARY KEY,
    nomeFabricante VARCHAR(50)
);
 
CREATE TABLE tblFornecedor (
    codFornecedor INT PRIMARY KEY,
    nomeFornecedor VARCHAR(50),
    contatoFornecedor VARCHAR(50)
);
 
CREATE TABLE tblCliente (
    codCliente INT PRIMARY KEY,
    nomeCliente VARCHAR(50),
    cpfCliente VARCHAR(11),
    emailCliente VARCHAR(50),
    sexoCliente CHAR(1),
    dataNascimentoCliente DATE
);
 
CREATE TABLE tblProduto (
    codProduto INT PRIMARY KEY,
    descricaoProduto VARCHAR(50),
    valorProduto FLOAT,
    quantidadeProduto INT,
    codFabricante INT,
    codFornecedor INT,
    FOREIGN KEY (codFabricante) REFERENCES tblFabricante(codFabricante),
    FOREIGN KEY (codFornecedor) REFERENCES tblFornecedor(codFornecedor)
);
 
CREATE TABLE tblVenda (
    codVenda INT PRIMARY KEY,
    dataVenda DATE,
    valorTotalVenda FLOAT,
    codCliente INT,
    FOREIGN KEY (codCliente) REFERENCES tblCliente(codCliente)
);
 
CREATE TABLE tblItensVenda
(
    codItensVenda INT PRIMARY KEY,
    codVenda INT,
    codProduto INT,
    quantidadeProduto INT,
    subTotalItensVenda FLOAT,
    FOREIGN KEY (codVenda) REFERENCES tblVenda (codVenda),
    FOREIGN KEY(codProduto) REFERENCES tblProduto (codProduto)
);