CREATE FUNCTION fc_CpfValido(@cpfCliente VARCHAR(11))
RETURNS CHAR(10)
AS
BEGIN
    DECLARE @INDICE INT,
            @SOMA INT,
            @DIG1 INT,
            @DIG2 INT,
            @CPF_TEMP VARCHAR(11),
            @DIGITOS_IGUAIS CHAR(1),
            @RESULTADO CHAR(10)

    SET @RESULTADO = 'inválido'

    SET @CPF_TEMP = SUBSTRING(@cpfCliente, 1, 1)
    SET @INDICE = 1
    SET @DIGITOS_IGUAIS = 'válido'

    WHILE (@INDICE <= 11)
    BEGIN
        IF SUBSTRING(@cpfCliente, @INDICE, 1) <> @CPF_TEMP
            SET @DIGITOS_IGUAIS = 'inválido'
        SET @INDICE = @INDICE + 1
    END

    IF @DIGITOS_IGUAIS = 'inválido'
    BEGIN
        SET @SOMA = 0
        SET @INDICE = 1

        WHILE (@INDICE <= 9)
        BEGIN
            SET @SOMA = @SOMA + CONVERT(INT, SUBSTRING(@cpfCliente, @INDICE, 1)) * (11 - @INDICE)
            SET @INDICE = @INDICE + 1
        END

        SET @DIG1 = 11 - (@SOMA % 11)
        IF @DIG1 > 9 SET @DIG1 = 0

        SET @SOMA = 0
        SET @INDICE = 1

        WHILE (@INDICE <= 10)
        BEGIN
            SET @SOMA = @SOMA + CONVERT(INT, SUBSTRING(@cpfCliente, @INDICE, 1)) * (12 - @INDICE)
            SET @INDICE = @INDICE + 1
        END

        SET @DIG2 = 11 - (@SOMA % 11)
        IF @DIG2 > 9 SET @DIG2 = 0

        IF (@DIG1 = CONVERT(INT, SUBSTRING(@cpfCliente, LEN(@cpfCliente) - 1, 1))) AND 
           (@DIG2 = CONVERT(INT, SUBSTRING(@cpfCliente, LEN(@cpfCliente), 1)))
            SET @RESULTADO = 'válido'
        ELSE
            SET @RESULTADO = 'inválido'
    END

    RETURN @RESULTADO
END


SELECT cpfCliente,
	CPF = dbo.fc_CpfValido(cpfCliente) 
FROM tblCliente
