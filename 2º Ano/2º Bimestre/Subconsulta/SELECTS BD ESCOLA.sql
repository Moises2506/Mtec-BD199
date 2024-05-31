
------------------------------------ BD ESCOLA -------------------------------------------------

-------------------------------------EXERC�CIO A----------------------------------------------
SELECT nomeCurso, valorCurso FROM tbCurso

WHERE valorCurso < (SELECT AVG (valorCurso) FROM tbCurso)

-------------------------------------EXERC�CIO B----------------------------------------------
SELECT nomeAluno, rgAluno FROM tbAluno

WHERE dataNascAluno = (SELECT MAX (dataNascAluno) FROM tbAluno)

-------------------------------------EXERC�CIO C----------------------------------------------
SELECT nomeAluno, rgAluno FROM tbAluno

WHERE dataNascAluno = (SELECT MIN (dataNascAluno) FROM tbAluno)

-------------------------------------EXERC�CIO D----------------------------------------------
SELECT nomeCurso, valorCurso FROM tbCurso

WHERE valorCurso = (SELECT MAX (valorCurso) FROM tbCurso)

-------------------------------------EXERC�CIO E----------------------------------------------
SELECT nomeAluno, nomeCurso FROM tbAluno
INNER JOIN tbMatricula
		ON tbMatricula.codAluno = tbAluno.codAluno

INNER JOIN tbTurma
		ON tbMatricula.codTurma = tbTurma.codTurma

INNER JOIN tbCurso
		ON tbTurma.codCurso = tbCurso.codCurso

WHERE dataMatricula = (SELECT MAX (dataMatricula) FROM tbMatricula)

-------------------------------------EXERC�CIO F----------------------------------------------
SELECT nomeAluno, nomeCurso FROM tbAluno
INNER JOIN tbMatricula
		ON tbMatricula.codAluno = tbAluno.codAluno

INNER JOIN tbTurma
		ON tbMatricula.codTurma = tbTurma.codTurma

INNER JOIN tbCurso
		ON tbTurma.codCurso = tbCurso.codCurso

WHERE dataMatricula = (SELECT MIN (dataMatricula) FROM tbMatricula)

-------------------------------------EXERC�CIO G----------------------------------------------
SELECT nomeAluno, rgAluno, dataNascAluno FROM tbAluno
INNER JOIN tbMatricula
		ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma
		ON tbTurma.codTurma = tbMatricula.codTurma
INNER JOIN tbCurso
		ON tbCurso.codCurso = tbTurma.codCurso

	WHERE tbCurso.codCurso = 'Ingl�s'


---------------------------------------- FINALIZADO ---------------------------------------------