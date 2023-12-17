CREATE DATABASE IF NOT EXISTS cuisine;
USE cuisine;

/*Création de la table dishes
La clé primaire de la table est un nombre entier. 
Cette valeur doit être unique pour chaque enregistrement de la table.*/

CREATE TABLE IF NOT EXISTS dishes (
  id     INTEGER PRIMARY KEY,
  name   VARCHAR(80) NOT NULL,
  veg    BOOLEAN NOT NULL,
  photo  VARCHAR(200) NOT NULL
);

/*Création de la table items qui représente les produits ou les "composants" des plats.
Il ne s'agit encore d'un ingrédient spécifique, 
mais simplement d'un produit qui peut être utilisé dans la conception d'un plat.*/

CREATE TABLE IF NOT EXISTS items (
  id    INTEGER PRIMARY KEY,
  name  VARCHAR(80) NOT NULL
);

/*Création de la table ingredients qui relie les items et les plats.
Une entrée de la table ingredients représente la quantité d'un item dans une recette.*/
CREATE TABLE IF NOT EXISTS ingredients (
  dish_id   INTEGER NOT NULL REFERENCES dishes(id),
  item_id   INTEGER NOT NULL REFERENCES items(id),
  quantity  FLOAT DEFAULT 1,
  unit      VARCHAR(30) NOT NULL
);

/*Création de la table directions qui contient les pas necéssaires pour preparer un plat.*/
CREATE TABLE IF NOT EXISTS directions (
  dish_id   INTEGER NOT NULL REFERENCES dishes(id),
  step_id   INTEGER NOT NULL,
  description   TINYTEXT,
  PRIMARY KEY (dish_id, step_id)
);

/*Pour lister les tables dans la base de données:*/
SHOW TABLES;



