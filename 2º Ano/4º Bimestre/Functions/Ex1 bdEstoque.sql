CREATE FUNCTION fc_diaSemanaVenda(@dataVenda DATE)
RETURNS VARCHAR(40) AS
BEGIN
    DECLARE @DiaSemana VARCHAR(40)
    DECLARE @Dia INT
    SET @Dia = DATEPART(dw, @dataVenda) 
   
    IF @Dia = 1
    BEGIN
        SET @DiaSemana = 'DOMINGO'
    END
    IF @Dia = 2
    BEGIN
        SET @DiaSemana = 'SEGUNDA-FEIRA'
    END
    IF @Dia = 3
    BEGIN
        SET @DiaSemana = 'TERÇA-FEIRA'
    END
    IF @Dia = 4
    BEGIN
        SET @DiaSemana = 'QUARTA-FEIRA'
    END
    IF @Dia = 5
    BEGIN
        SET @DiaSemana = 'QUINTA-FEIRA'
    END
    IF @Dia = 6
    BEGIN
        SET @DiaSemana = 'SEXTA-FEIRA'
    END
    IF @Dia = 7
    BEGIN
        SET @DiaSemana = 'SÁBADO'
    END
    
    RETURN @DiaSemana
END

SELECT codVenda, valorTotalVenda ,CONVERT(VARCHAR(10), dataVenda, 103) AS 'Data Da Venda',
       DiaDaSemana = dbo.fc_diaSemanaVenda(dataVenda)
FROM tblVenda