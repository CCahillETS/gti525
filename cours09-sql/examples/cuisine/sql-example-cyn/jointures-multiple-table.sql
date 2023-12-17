/*obtenir la liste des ingrédients pour Fettuccine Alfredo*/
SELECT quantity, unit, name
FROM ingredients JOIN items ON ingredients.item_id = items.id
WHERE ingredients.dish_id = 3;

/*effectuer la jointure en utilisant des conditions spécifiées après WHERE*/
SELECT quantity, unit, items.name
FROM ingredients, items, dishes
WHERE ingredients.dish_id = dishes.id AND
ingredients.item_id = items.id
AND dishes.name LIKE "Spaghettis%";

