CREATE FUNCTION fc_DuracaoCurso(@cargaHorariaCurso INT)
RETURNS VARCHAR(7) AS
BEGIN
	DECLARE @Curso VARCHAR (7) 
	DECLARE @Duracao INT
	SET @Duracao = (@cargaHorariaCurso)

	IF @Duracao < 1000
	BEGIN
		SET @Curso = 'Curto'
	END

	IF @Duracao > 1000
	BEGIN
		SET @Curso = 'Extenso'
	END

	RETURN @Curso
END

SELECT nomeCurso, cargaHorariaCurso AS 'Carga Horária',
       Tamanho = dbo.fc_DuracaoCurso(cargaHorariaCurso)
FROM tbl_curso