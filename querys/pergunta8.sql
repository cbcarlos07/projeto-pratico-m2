select ae.animal, count(1) total 

from pesquisa p  

inner join animal_estimacao ae  

on p.cod_animal_estimacao = ae.cod_animal_estimacao  

where ae.animal = 'cachorro' 

group by animal 


select ae.animal, sum(1) total 

from pesquisa p  

inner join animal_estimacao ae on p.cod_animal_estimacao = ae.cod_animal_estimacao  

where ae.animal = 'cachorro' 

order by p.animal