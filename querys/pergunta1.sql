# pergunta 1
SELECT COUNT(*) 
  FROM pesquisa pe
  INNER JOIN pessoa p ON p.cod_pessoa = pe.cod_pessoa
  WHERE pe.cod_animal_estimacao = 3
  AND p.genero = 'Feminino'