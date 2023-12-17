/*Étant données les descriptions des tables countries, languages et country_languages 
ci-dessous, vous devez créer une instruction SQL pour récupérer la liste des pays où le 
Français est parlé*/

USE nation;
DESC countries;
DESC languages;
DESC languages;

select c.* from countries c
join country_languages cl on c.country_id = cl.country_id
join languages l on l.language_id = cl.language_id
where l.language = 'French';