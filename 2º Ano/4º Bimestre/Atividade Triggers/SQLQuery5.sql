--atividade 2--
--B--

--USE db_BancoQualquer--
CREATE TRIGGER tgAtualizaSaldoSaque
ON tbSaque
AFTER INSERT
AS
BEGIN
    DECLARE @saldoAtual FLOAT

    
    SELECT saldoConta INTO saldoAtual
    FROM tbContaCorrente
    WHERE numConta = (SELECT numConta FROM inserted)


    IF @saldoAtual >= (SELECT valorSaque FROM inserted) 
        UPDATE tbContaCorrente
        SET saldoConta = saldoConta - (SELECT valorSaque FROM inserted)
        WHERE numConta = (SELECT numConta FROM inserted)
    ELSE
        
		PRINT ('Saldo insuficiente para realizar o saque.')

END 

