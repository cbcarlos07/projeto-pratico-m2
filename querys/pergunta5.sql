# pergunta 5
SELECT * FROM (
	SELECT bebida FROM (
		SELECT b.bebida, COUNT(*) total
		 FROM pesquisa pe
		 INNER JOIN pessoa p ON p.cod_pessoa = pe.cod_pessoa
		 INNER JOIN bebida b ON b.cod_bebida = pe.cod_bebida
		 WHERE p.genero = 'Feminino'
		 GROUP BY b.bebida
	) f
	ORDER BY total DESC 
	LIMIT 1 
) a
UNION  ALL 

SELECT * FROM (
	SELECT bebida FROM (
		SELECT b.bebida, COUNT(*) total
		 FROM pesquisa pe
		 INNER JOIN pessoa p ON p.cod_pessoa = pe.cod_pessoa
		 INNER JOIN bebida b ON b.cod_bebida = pe.cod_bebida
		 WHERE p.genero = 'Masculino'
		 GROUP BY b.bebida
	) m
	ORDER BY total DESC 
	LIMIT 1 
) b
 