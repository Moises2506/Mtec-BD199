--Ex1
SELECT descricaoProduto, nomeFabricante
FROM tblProduto
    INNER JOIN tblFabricante
    ON tblProduto.codFabricante = tblFabricante.codFabricante;
    
--Ex2
SELECT descricaoProduto, nomeFornecedor
FROM tblProduto
    INNER JOIN tblFornecedor
    ON tblProduto.codFornecedor = tblFornecedor.codFornecedor;

--Ex3
SELECT SUM(quantidadeProduto) as Valor_Produtos, nomeFabricante
FROM tblProduto
    INNER JOIN tblFabricante
    ON tblProduto.codFabricante = tblFabricante.codFabricante
GROUP BY nomeFabricante
ORDER BY Valor_Produtos DESC;


--Ex4
SELECT SUM(valorTotalVenda) as Valor_Total, nomeCliente
FROM tblVenda
    INNER JOIN tblCliente
    ON tblVenda.codCliente = tblCliente.codCliente
GROUP BY nomeCliente
ORDER BY Valor_Total DESC;

--Ex5 

SELECT AVG(valorProduto) as Valor_Media, nomeFornecedor
FROM tblProduto
    INNER JOIN tblFornecedor
    ON tblProduto.codFornecedor = tblFornecedor.codFornecedor
GROUP BY nomeFornecedor
ORDER BY Valor_Media DESC;

--Ex6
SELECT SUM(valorTotalVenda) as Valor_Total_Venda, nomeCliente as nomes_Cliente
FROM tblVenda
    INNER JOIN tblCliente
    ON tblVenda.codCliente = tblCliente.codCliente
GROUP BY nomeCliente
ORDER BY nomes_Cliente ASC;

--Ex7
SELECT SUM(valorProduto) as Valor_Total_Produtos, nomeFabricante as fabricante
FROM tblProduto
    INNER JOIN tblFabricante
    ON tblProduto.codFabricante = tblFabricante.codFabricante
GROUP BY nomeFabricante
ORDER BY Valor_Total_Produtos DESC;

--Ex8
SELECT AVG(valorProduto) as Valor_Total_Produtos, nomeFornecedor as fornecedor
FROM tblProduto
    INNER JOIN tblFornecedor
    ON tblProduto.codFornecedor = tblFornecedor.codFornecedor
GROUP BY nomeFornecedor
ORDER BY Valor_Total_Produtos DESC;

--Ex10
SELECT AVG(valorProduto) as Valor_Total_Produtos, nomeFornecedor as fornecedor
FROM tblProduto
    INNER JOIN tblFornecedor
    ON tblProduto.codFornecedor = tblFornecedor.codFornecedor
GROUP BY nomeFornecedor
ORDER BY Valor_Total_Produtos DESC;