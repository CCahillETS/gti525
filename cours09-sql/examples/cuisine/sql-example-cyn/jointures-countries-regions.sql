/*Étant données les descriptions des tables countries et regions, vous devez créer une 
instruction SQL pour récupérer la liste des pays qui font partie de la region South America*/
USE nation;
DESC countries;

DESC regions;

select c.* from countries c
join regions r on c.region_id = r.region_id
where r.name = 'South America';
