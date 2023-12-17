/*contenu d'une table est affiché à l'aide de la commande SELECT*/
SELECT * FROM continents;

/*prend les 3 premiers*/
SELECT * FROM continents LIMIT 3;

/*spécifier des contraintes et d'autres instructions*/
SELECT name, country_code2 from countries WHERE name LIKE 'Ca%' ORDER BY name DESC;

