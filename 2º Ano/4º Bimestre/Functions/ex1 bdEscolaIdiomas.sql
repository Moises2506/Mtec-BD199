CREATE FUNCTION fc_diaSemanaCurso(@Data DATE)
RETURNS VARCHAR(40) AS
BEGIN
    DECLARE @DiaSemana VARCHAR(40)
    DECLARE @Dia INT
    SET @Dia = DATEPART(dw, @Data) 
   
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


SELECT codAluno, CONVERT(VARCHAR(10), dataMatricula, 103) AS 'Data Matrícula',
       DiaDaSemana = dbo.fc_diaSemanaCurso(dataMatricula)
FROM tbl_matricula

SELECT MinhaFuncao = dbo.fc_diaSemanaCurso('23/08/2012')
