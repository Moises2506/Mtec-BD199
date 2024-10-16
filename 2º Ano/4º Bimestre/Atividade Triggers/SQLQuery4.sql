--atividade 2--
--A--

--USE db_BancoQualquer--
CREATE TRIGGER tgAtualizaSaldoDeposito
ON tbDeposito
AFTER INSERT 
AS
BEGIN
   
    UPDATE tbContaCorrente
    SET saldoConta = saldoConta + (SELECT valorDeposito FROM inserted)
    WHERE numConta = (SELECT numConta FROM inserted)
END
