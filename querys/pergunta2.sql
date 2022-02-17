# pergunta 2
SELECT a.soma / a.total
FROM (
	SELECT SUM( TIMESTAMPDIFF(YEAR, p.data_nascimento, NOW()) ) soma, COUNT(*) total
	   FROM pesquisa pe
	   INNER JOIN pessoa p ON p.cod_pessoa = pe.cod_pessoa
	   INNER JOIN bebida b ON b.cod_bebida = pe.cod_bebida
	   INNER JOIN clima c ON c.cod_clima = pe.cod_clima
	   WHERE pe.cod_bebida = 6
  		AND p.genero = 'Masculino'
  		AND pe.cod_clima = 1
) a
