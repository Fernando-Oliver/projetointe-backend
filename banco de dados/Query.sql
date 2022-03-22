SELECT * FROM Cliente



UPDATE CLIENTE SET NOME = 'PEDRO DE LARA'
WHERE idCliente =1




ALTER TABLE CLIENTE ADD EMAIL VARCHAR (50)
ALTER TABLE FUNCIONARIO ADD SALARIO FLOAT (2)



DELETE FROM CLIENTE WHERE idCliente =2



SELECT *, MONTH(DataAdmissao) FROM FUNCIONARIO

SELECT NOME, YEAR(DataAdmissao) AS "ADMISSÃO" FROM FUNCIONARIO


SELECT *, YEAR(DataAdmissao) FROM FUNCIONARIO



SELECT COUNT(*), DATEDIFF(YEAR,DataAdmissao, GETDATE()) FROM FUNCIONARIO
GROUP BY DATEDIFF(YEAR,DataAdmissao, GETDATE())

SELECT DATEPART(HOUR, GETDATE()), DATEPART(MINUTE, GETDATE())

SELECT DATEDIFF(HOUR,'08/12/1981', GETDATE()) 

SELECT 3 + 3


SELECT	c.idCliente,
		c.Nome,
		v.idReserva
	FROM cliente as c INNER JOIN Reserva as v
	ON c.idCliente = v.idCliente
	

SELECT	c.idCliente,
		c.Nome,
		v.idReserva
	FROM cliente as c LEFT JOIN  Reserva as v
	ON c.idCliente = v.idCliente


	

SELECT	v.idReserva,
		f.idFuncionario,
		f.Nome	
	FROM Reserva as v RIGHT JOIN Funcionario as f
	ON v.idFuncionario = f.idFuncionario
	where v.idReserva is null	


-- FULL JOIN
SELECT	c.idCliente,
		c.Nome,
		v.idReserva,
		f.idFuncionario,
		f.Nome	
	FROM cliente as c FULL JOIN Reserva as v
	ON c.idCliente = v.idCliente FULL JOIN Funcionario as f
	ON v.idFuncionario = f.idFuncionario
	

	ALTER TABLE CLIENTE ADD EMAIL VARCHAR (50)
ALTER TABLE FUNCIONARIO ADD SALARIO FLOAT (2)

 UPDATE FUNCIONARIO
SET SALARIO = SALARIO + 200
WHERE idFuncionario = 3

UPDATE FUNCIONARIO
SET NOME = 'JOSUA', EMAIL = 'josua@uol.com.br' 
WHERE idFuncionario = 3

UPDATE FUNCIONARIO
SET DataAdmissao = GETDATE()
WHERE idFuncionario = 3

SELECT MAX(SALARIO) FROM FUNCIONARIO

SELECT * FROM FUNCIONARIO
WHERE EXISTS (SELECT * FROM FUNCIONARIO WHERE SALARIO >= 2000)

SELECT * FROM FUNCIONARIO

DELETE FROM FUNCIONARIO
WHERE SALARIO = (SELECT MAX(SALARIO) FROM FUNCIONARIO)

UPDATE FUNCIONARIO
SET SALARIO = SALARIO * 1.15
WHERE SALARIO = (SELECT MIN(SALARIO) FROM FUNCIONARIO)

SELECT idFuncionario ,DAY(DataAdmissao) FROM FUNCIONARIO

SELECT * FROM FUNCIONARIO
WHERE MONTH(DataAdmissao) = '12' AND DAY(DataAdmissao) = '2'





 