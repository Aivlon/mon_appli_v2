# README

# 🥊 Boxeurs Olympiques – Initialisation de la base de données

Ce projet recense des boxeurs olympiques dans les catégories **Poids mouche** et **Poids lourd**, en utilisant un fichier JSON pour initialiser la base de données automatiquement.

---

## ✅ Objectif

Utiliser le fichier `boxers_jo.json` pour insérer automatiquement **10 boxeurs** dans la base de données avec leurs caractéristiques (attaque, défense, nationalité, etc.).

---

## 📦 Contenu attendu du fichier JSON

Le fichier `boxers_jo.json` contient une liste de boxeurs, chacun avec les champs suivants :

- `name` : nom du boxeur
- `nationality` : nationalité
- `weight_class` : catégorie de poids
- `olympic_year` : année de participation aux JO
- `attack_points` : points d’attaque (sur 100)
- `defense_points` : points de défense (sur 100)

---

## 🛠️ Étapes pour initialiser la base

1. Placer le fichier `boxers_jo.json` dans le dossier racine de l'application.
2. S’assurer que le modèle `Boxer` existe avec les champs mentionnés ci-dessus.
3. Adapter le fichier `db/seeds.rb` pour lire le JSON et créer les enregistrements.
4. Lancer la commande suivante pour insérer les données :
   ```bash
   rails db:seed

