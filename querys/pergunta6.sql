# pergunta 6
SELECT 
		 SUM( TIMESTAMPDIFF(YEAR, p.data_nascimento, NOW()) ) /  COUNT(*) media_idade
      
  FROM pesquisa pe
  INNER JOIN pessoa p ON p.cod_pessoa = pe.cod_pessoa
  INNER JOIN hobbie h ON h.cod_hobbie = pe.cod_hobbie
  WHERE pe.cod_hobbie = 5

  	