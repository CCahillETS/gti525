/*Ajout d'éléments dans la table items*/
INSERT INTO items VALUES
(1, 'fettucine'), (2, 'beurre'), (3, 'bacon'),
(4, 'ail'), (5, 'poivre noir'), (6, 'crème liquide'),
(7, 'oeufs'), (8, 'parmesan râpé'), (9, 'pecorino romano'),
(10, 'ciboulette hachée'), (11, 'pignons de pin grillé'),
(12, 'basilique'), (13, 'huile dolive'), (14, 'spaguetti');

/*Ajout d'éléments dans la table dish:*/
INSERT INTO dishes VALUES
(1, 'Fettucine carbonara', false, 'https://img.taste.com.au/yeaSrH46/w643-h428-cfill-q90/taste/2016/11/creamy-fettuccine-carbonara-105940-1.jpeg'),
(2, 'Spaghettis au pesto', true, 'https://assets.afcdn.com/recipe/20150828/19205_w768h583c1cx2048cy3072.webp'),
(3, 'Fettucine alfredo', true, 'https://www.modernhoney.com/wp-content/uploads/2018/08/Fettuccine-Alfredo-Recipe-1.jpg');

/*Ajout d'éléments dans la table ingredients*/
INSERT INTO ingredients VALUES
(1, 1, 500, 'g'), (1, 2, 60, 'g'), (1, 3, 6, 'tranche'),
(1, 4, 1, 'gousse'), (1, 5, 0.5, 'c. à c.'),
(1, 6, 300, 'ml'), (1, 7, 2, 'un.'),
(1, 8, 40, 'g'), (1, 9, 40, 'g'), (1, 10, 2, 'c. à c.'),
(2, 4, 2, 'gousse'), (2, 11, 50, 'g'),
(2, 8, 40, 'g'), (2, 12, 4, 'botte'),
(2, 13, 125, 'ml'), (2, 14, 500, 'g'),
(3, 1, 500, 'g'), (3, 2, 80, 'g'),
(3, 6, 300, 'ml'), (3, 8, 40, 'g');

/*Ajout d'éléments dans la table directions*/

INSERT INTO directions VALUES
(1, 1, 'Faites cuire les pâtes dans une grande casserole deau bouillante, puis égouttez-les.'),
(1, 2, 'Pendant ce temps, faites fondre le beurre dans une poêle et faites revenir le bacon 5 minutes.'),
(1, 3, 'Ajoutez lail, le poivre et la crème liquide dans la poêle. Laissez frémir à découvert jusquà ce que la sauce réduise de moitié. Retirez la poêle du feu pour incorporer les oeufs et les fromages.'),
(1, 4, 'Mélangez les pâtes avec la sauce. Parsemer de ciboulette avant de servir.'),
(2, 1, 'Pour réaliser le pesto, avec un mixeur ou un robot, mixez lail, les pignons, le parmesan râpé et le basilic jusquà obtention dun mélange presque lisse.'),
(2, 2, 'Versez progressivement lhuile dolive en filet, en mixant, jusquà ce que le mélange ait épaissi.'),
(2, 3, 'Faites cuire les pâtes dans une grande casserole deau bouillante, Égouttez-les et réservez 60 ml de leau de cuisson.'),
(2, 4, 'Mélangez les spaghettis, le pesto et leau de cuisson réservée dans un grand saladier.'),
(3, 1, 'Faites cuire les pâtes dans une grande casserole deau bouillante salée, puis égouttes-les.'),
(3, 2, 'Faites fondre le beurre dans une poêle. Versez la crème liquide, portez à ébullition puis baissez le feu. Laisser mijoter 5 minutes sans couvrir, jusquà ce que la sauce ait réduit de moitié.'),
(3, 3, 'Ajoutez le parmesan et remuez pendant 2 minutes pour que le fromage soit bien incorporé.'),
(3, 4, 'Servez les fettucine avec la sauce et parsemer dun peu de parmesan râpé, si vous le souhaitez.');
