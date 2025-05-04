# OUAMMOU MOURAD  
## Exercices Dart 

---

###  Introduction

Ce dépôt présente les solutions aux trois exercices réalisés en **Dart**, un langage moderne orienté objet, utilisé principalement pour le développement mobile avec **Flutter**. Les exercices abordent des concepts fondamentaux tels que la **syntaxe de base**, la **programmation orientée objet** et la **programmation asynchrone**.

---

###  Exercices

#### **Exercice 1 – Syntaxe de base**

**Objectif** :
- Créer une classe `Book` et une classe `Library` pour gérer une collection de livres.
- Implémenter des méthodes pour ajouter des livres, emprunter un livre et obtenir les livres disponibles.
- Surcharge de l'opérateur `+` pour fusionner deux bibliothèques.
- Utiliser une fonction pour afficher les livres disponibles avec une syntaxe claire (for-in et interpolation de chaînes).

**Réponses aux questions** :
- **Comparaison avec Java et JavaScript** :  
  - En Java, l'initialisation des objets se fait via des constructeurs, une méthode qui ressemble à Dart.  
  - En JavaScript, l'utilisation des classes et des prototypes est plus flexible, permettant plus de dynamiques, mais elle manque de la structure stricte qu'offre Dart et Java. Dart et Java imposent un schéma plus rigide pour la création des objets.

---

#### **Exercice 2 – Programmation orientée objet**

**Objectif** :
- Créer une classe `Employe` avec des attributs tels que `nom` et `salaire`.
- Créer une sous-classe `Manager` qui hérite de la classe `Employe` et ajoute un attribut supplémentaire (`prime`).
- Redéfinir la méthode `afficherInfos` dans la classe `Manager` pour illustrer le polymorphisme.
- Créer une liste d'objets `Employe` et `Manager`, et démontrer le comportement polymorphe à travers une boucle.

**Réponses aux questions** :
- **L'héritage fonctionne-t-il comme en Java ?**  
  Oui, l'héritage en Dart fonctionne de manière similaire à Java. La sous-classe hérite des propriétés et méthodes de la classe parent, et l'utilisation de `super` permet d'appeler le constructeur de la classe parente, ce qui est également valide en Java.
  
- **Différences avec les prototypes de JavaScript ?**  
  Contrairement à JavaScript, qui utilise un modèle basé sur des prototypes, Dart suit un modèle de programmation orientée objet plus traditionnel. Les objets sont basés sur des classes et l'héritage est explicite, contrairement à JavaScript où l'héritage via prototypes peut être plus dynamique et moins strict.

---

#### **Exercice 3 – Programmation asynchrone**

**Objectif** :
- Simuler une requête API avec `Future.delayed` pour simuler un délai de 2 secondes et retourner une chaîne "Données reçues".
- Utiliser la syntaxe `async/await` pour afficher un message de chargement, attendre la réponse de `fetchData()` et afficher le résultat une fois disponible.

**Réponses aux questions** :
- **En Java** :  
  Pour gérer les opérations asynchrones en Java, on pourrait utiliser des mécanismes de threads, comme `Thread.sleep()`, ou utiliser des outils comme `ExecutorService` pour gérer des tâches asynchrones de manière plus sophistiquée.
  
- **En JavaScript** :  
  En JavaScript, on utiliserait une `Promise` pour gérer des opérations asynchrones. L'utilisation de `async/await` permet de rendre le code aussi lisible qu'un code synchrone tout en traitant des opérations non bloquantes.





