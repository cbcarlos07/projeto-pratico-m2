# pergunta 4
SELECT ho, MAX(total) total
FROM (
SELECT h.hobbie ho, COUNT(*) total
 FROM pesquisa pe
 INNER JOIN hobbie h ON h.cod_hobbie = pe.cod_hobbie
 INNER JOIN pessoa p ON p.cod_pessoa = pe.cod_pessoa
 INNER JOIN animal_estimacao ae ON ae.cod_animal_estimacao = pe.cod_animal_estimacao
 WHERE p.genero = 'Feminino'
 AND pe.cod_animal_estimacao = 2
 GROUP BY h.hobbie
 ) a 
 GROUP BY ho
 ORDER BY 2 DESC
 LIMIT 1