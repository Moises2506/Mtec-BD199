CREATE FUNCTION fc_DataArrumada(@dataMatricula DATE)
RETURNS VARCHAR (20) AS 
BEGIN
	DECLARE @DataNova VARCHAR (20)
	SET @DataNova = CONVERT(VARCHAR(10),@dataMatricula, 103)
	RETURN @DataNova
END
SELECT dataMatricula AS 'Data Antiga',
		DataNova = dbo.fc_DataArrumada(dataMatricula)
FROM tbl_matricula

