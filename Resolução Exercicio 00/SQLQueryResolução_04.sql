/*EXERCICIO 04, EXERCICIO DE REFOR�O*/

/*
a.	Selecione as turmas e seus professores.
*/

SELECT 
	T.NM_TURMA, P.NM_PROFESSOR
FROM
	TB_TURMA T
INNER JOIN
	TB_PROFESSOR P ON
	(T.MATRICULA_PROFESSOR = P.MATRICULA_PROFESSOR) 

/*
b.	Selecione os alunos matriculados
e as turmas em que est�o matriculados.
*/
SELECT 
	A.NOME, T.NM_TURMA
FROM 
   TB_ALUNOS_TURMA AT
INNER JOIN
	TB_TURMA T ON
	(AT.COD_TURMA = T.COD_TURMA)
INNER JOIN
	TB_ALUNO A ON
	(AT.MATRICULA = A.MATRICULA)

/*
c.	Selecione os alunos matriculados e o nome de seus professores.
*/

SELECT 
	A.NOME, P.NM_PROFESSOR
FROM 
	TB_ALUNOS_TURMA AT
INNER JOIN
	TB_ALUNO A ON
	(AT.MATRICULA = A.MATRICULA)
INNER JOIN
	TB_TURMA T ON
	(AT.COD_TURMA = T.COD_TURMA)
INNER JOIN
	TB_PROFESSOR P ON 
	(T.MATRICULA_PROFESSOR = P.MATRICULA_PROFESSOR)	

/*
d.	Selecione todos os professores e, quando existir,
as turmas nas quais ensinam.
*/

SELECT 
	P.NM_PROFESSOR, T.NM_TURMA 
FROM 
	TB_TURMA T
RIGHT JOIN 
	TB_PROFESSOR P ON
	(T.MATRICULA_PROFESSOR = P.MATRICULA_PROFESSOR)


/*
e.	Selecione todos os alunos e, quando existir, 
as turmas em que est�o matriculados. 
Ordene o resultado pelo Nome do Aluno.
*/

SELECT 
	A.NOME, T.NM_TURMA
FROM 
	TB_ALUNO A

INNER JOIN
	TB_ALUNOS_TURMA AT ON
	(A.MATRICULA=AT.MATRICULA)
RIGHT JOIN
	TB_TURMA T ON
	(AT.COD_TURMA=T.COD_TURMA)
ORDER BY A.NOME

