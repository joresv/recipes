Voici une version mise à jour du README qui inclut le gestionnaire d'état **GetX** et ses avantages :

---

# 📱 Flutter Recipe App

## Description

Cette application Flutter met en avant les meilleures pratiques pour le développement d'applications mobiles modernes, combinant une architecture robuste avec des fonctionnalités essentielles. Elle permet de parcourir des recettes de cuisine, d'effectuer des recherches, de trier les résultats et d'utiliser une pagination efficace.

---

## 🛠️ Architecture

L'application est conçue en suivant l'**architecture hexagonale**, garantissant une séparation claire des préoccupations :

- **Inversion des dépendances** :
    - Le module `recipes` est découplé des dépendances comme le client HTTP `dio` et le service `dummyjson`.
    - Cette approche assure un code indépendant et facilement testable.

- **Gestion d'état avec GetX** :
    - **Pourquoi GetX ?**
        - Outils intégrés comme le CLI pour la gestion de l’internationalisation.
        - Un injecteur de dépendances puissant.
        - Système de navigation 2.0, simplifiant la gestion des routes.
        - Gestion intelligente des contrôleurs, libérant automatiquement les ressources inutilisées.
        - Fonctionnalités supplémentaires pour accélérer le développement.

---

## ✨ Fonctionnalités

- **Interfaces dédiées :**
    - Une interface pour afficher la liste des recettes.
    - Une interface pour afficher les détails de chaque recette de cuisine.

- **Recherche avancée :**
    - Rechercher des recettes par leur nom.

- **Tri des résultats :**
    - Trier les recettes en ordre ascendant ou descendant.

- **Pagination :**
    - Charger les recettes par pages pour améliorer les performances.

- **Internationalisation :**
    - Prise en charge multilingue grâce à GetX, rendant l'application accessible à un public mondial.

---

## 🚀 Lancer le projet

1. Clonez le dépôt :
   ```bash
   git clone <URL_DU_DÉPÔT>
   cd <NOM_DU_DÉPÔT>
   ```

2. Installez les dépendances :
   ```bash
   flutter pub get
   ```

3. Lancez l'application :
   ```bash
   flutter run
   ```

---

## 📚 Bonnes pratiques intégrées

- **Architecture hexagonale** : meilleure modularité et séparation des couches (présentation, domaine, infrastructure).
- **Gestion d’état avec GetX** : injecteur de dépendances, navigation 2.0, et gestion automatique des contrôleurs.
- **Internationalisation intégrée** grâce au CLI de GetX.
- Pagination optimisée pour des chargements fluides.
- Recherche et tri pour améliorer l’expérience utilisateur.

---

## 📷 Aperçu

*(Ajoutez des captures d’écran ou GIFs ici)*

---

## 🛡️ Licence

Ce projet est sous licence MIT. Vous êtes libre de l'utiliser, de le modifier et de le distribuer comme bon vous semble.

---