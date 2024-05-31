-------------------------------------BD ESTOQUE---------------------------------------------------

--------------------------------EXERC�CIO 1---------------------------------------------
SELECT codProduto, descricaoProduto, nomeFabricante FROM tblProduto
INNER JOIN tblFabricante
		ON tblFabricante.codFabricante = tblProduto.codFabricante
WHERE valorProduto = (SELECT MAX (valorProduto) FROM tblProduto)
	
--------------------------------EXERC�CIO 2---------------------------------------------	
SELECT codProduto, valorProduto, nomeFabricante FROM tblProduto
INNER JOIN tblFabricante
		ON tblFabricante.codFabricante = tblProduto.codFabricante
WHERE valorProduto > (SELECT AVG (valorProduto) FROM tblProduto)

--------------------------------EXERC�CIO 3---------------------------------------------
SELECT nomeCliente FROM tblCliente
INNER JOIN tblVenda
		ON tblCliente.codCliente = tblVenda.codCliente

WHERE valorTotalVenda > (SELECT AVG (valorTotalVenda) FROM tblVenda)

--------------------------------EXERC�CIO 4---------------------------------------------
SELECT descricaoProduto, valorProduto FROM tblProduto

WHERE valorProduto = (SELECT MAX (valorProduto) FROM tblProduto)

--------------------------------EXERC�CIO 5---------------------------------------------
SELECT descricaoProduto, valorProduto FROM tblProduto

WHERE valorProduto = (SELECT MIN (valorProduto) FROM tblProduto)


