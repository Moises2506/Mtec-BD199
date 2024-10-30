CREATE FUNCTION  fc_VendasCliente(@codCliente INT)
RETURNS INT AS
BEGIN
	DECLARE @TotalVendas INT 
	SELECT @TotalVendas = COUNT(valorTotalVenda) FROM tblVenda WHERE codCliente = @codCliente
	
	RETURN @TotalVendas
END 

SELECT codCliente,  
       TotalVendas = dbo.fc_VendasCliente(codCliente)
FROM tblVenda

