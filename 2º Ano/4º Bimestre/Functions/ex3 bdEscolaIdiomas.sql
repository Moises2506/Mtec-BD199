CREATE FUNCTION fc_ValorCurso(@valorCurso MONEY)
RETURNS VARCHAR(6) AS
BEGIN
	DECLARE @Curso VARCHAR (6) 
	DECLARE @Valor MONEY
	SET @Valor = (@valorCurso)

	IF @Valor < 400
	BEGIN
		SET @Curso = 'Barato'
	END

	IF @Valor > 400
	BEGIN
		SET @Curso = 'Caro'
	END

	RETURN @Curso
END

SELECT nomeCurso, valorCurso AS 'Custo Do Curso',
       Curso = dbo.fc_ValorCurso(valorCurso)
FROM tbl_curso