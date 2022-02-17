# pergunta 3
SELECT ho, MAX(total) total
FROM (
SELECT h.hobbie ho, COUNT(*) total
 FROM pesquisa pe
 INNER JOIN hobbie h ON h.cod_hobbie = pe.cod_hobbie
 INNER JOIN pessoa p ON p.cod_pessoa = pe.cod_pessoa
 WHERE p.genero = 'Masculino'
 GROUP BY h.hobbie
 ) a 
 GROUP BY ho
 ORDER BY 2 DESC
 LIMIT 1