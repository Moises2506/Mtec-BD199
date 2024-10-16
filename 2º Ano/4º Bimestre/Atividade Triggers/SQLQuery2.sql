-------- atividade 1----------
CREATE TRIGGER tgAtualizaPontuacaoMotorista
ON tbMultas
AFTER INSERT
AS

BEGIN

	 UPDATE tbMotorista
		SET pontuacaoAcumulada = pontuacaoAcumulada + (SELECT pontosMulta FROM inserted)
		WHERE idMotorista = (
			SELECT idMotorista 
			FROM tbVeiculo 
			WHERE idVeiculo = (SELECT idVeiculo FROM inserted)
		);

		IF (
        SELECT pontuacaoAcumulada 
        FROM tbMotorista 
        WHERE idMotorista = (
            SELECT idMotorista 
            FROM tbVeiculo 
            WHERE idVeiculo = (SELECT idVeiculo FROM inserted)
        )
    ) >= 20 
	
		PRINT ('O motorista pode ter a habilitação suspensa porque tem 20 pontos ou mais.')
		
		ELSE 

			PRINT ('Multa contabilizada com sucesso!')
END