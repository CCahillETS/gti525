/*Écrire dans une collection
Les fonctions insertOne et insertMany sont utilisées pour 
ajouter des documents à une collection.*/
db.planets.insertOne({
  name: "Jupiter",
  orderFromSun: 5,
  hasRings: true,
  mainAtmosphere: ["H2", "He", "CH4"],
  surfaceTemperatureC: { min: null, max: null, mean: -145.15 },
});

/*Si la planète a été enregistrée dans la base de données, 
un JSON contenant son identifiant sera renvoyé.
{
  acknowledged: true,
  insertedId: ObjectId("624107dd97f816cef5440c09")
}
*/

/*Écrire dans une collection
Les fonctions insertOne et insertMany sont utilisées pour 
ajouter des documents à une collection.*/
db.planets.insertMany([
  {
    name: "Jupiter",
    orderFromSun: 5,
    hasRings: true,
    mainAtmosphere: ["H2", "He", "CH4"],
    surfaceTemperatureC: { min: null, max: null, mean: -145.15 },
  },
  {
    name: "Earth",
    orderFromSun: 3,
    hasRings: false,
    mainAtmosphere: ["N", "O2", "Ar"],
    surfaceTemperatureC: { min: -89.2, max: 56.7, mean: 14 },
  },
]);

/*Résultat d'exécution:
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("624108b997f816cef5440c0a"),
    '1': ObjectId("624108b997f816cef5440c0b")
  }
} */



/*Lecture d'une collection*/
db.planets.find({ orderFromSun: { $lt: 4 } });

/*reponse

[
  {
    _id: ObjectId("621ff30d2a3e781873fcb65c"),
    name: 'Mercury',
    orderFromSun: 1,
    hasRings: false,
    mainAtmosphere: [],
    surfaceTemperatureC: { min: -173, max: 427, mean: 67 }
  },
  {
    _id: ObjectId("621ff30d2a3e781873fcb662"),
    name: 'Venus',
    orderFromSun: 2,
    hasRings: false,
    mainAtmosphere: [ 'CO2', 'N' ],
    surfaceTemperatureC: { min: null, max: null, mean: 464 }
  },
  {
    _id: ObjectId("624108b997f816cef5440c0b"),
    name: 'Earth',
    orderFromSun: 3,
    hasRings: false,
    mainAtmosphere: [ 'N', 'O2', 'Ar' ],
    surfaceTemperatureC: { min: -89.2, max: 56.7, mean: 14 }
  }
]
*/


/*Pour specifier une condition/filtre: */
db.planets.findOne({ orderFromSun: { $lt: 4 } });

/*reponse
{
  _id: ObjectId("621ff30d2a3e781873fcb65c"),
  name: 'Mercury',
  orderFromSun: 1,
  hasRings: false,
  mainAtmosphere: [],
  surfaceTemperatureC: { min: -173, max: 427, mean: 67 }
}
*/

/*Mises à jour
Si nous souhaitons modifier un document, nous pouvons utiliser 
updateOne ou updateMany. La méthode updateOne prend (au moins) 
deux paramètres:
-- le premier est le critère pour trouver quel document mettre à jour

le second est un document décrivant les mises à jour à faire.*/