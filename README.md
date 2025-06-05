# J2 🥊 Page d'accueil - Simulateur de combats de boxe

Cette page d’accueil est la première interaction avec l’utilisateur. Elle a pour but de capter l’attention, présenter le concept et inviter à simuler un combat entre boxeurs historiques.

## ✅ Objectifs

- Créer une page d’accueil accessible à la racine de l'application (`/`)
- Mettre en avant un CTA (call to action) (“Simuler un combat”)
- Lien vers la **liste des boxeurs**
- Interface esthétique

---

## 🛠️ Techniques recommandées

### ➤ 1. **Structure Rails**

- Ajouter un contrôleur `HomeController` avec une action `index`
- Créer la vue correspondante : `app/views/home/index.html.erb`
- Définir la route par défaut dans `config/routes.rb` :

```ruby
root 'home#index'
```

---

### 🎨 2. **Design / Style**

Tu as le choix entre deux approches pour le design :

#### A. Utilisation de [**Tailwind CSS**](https://tailwindcss.com/docs)

> Tailwind est un framework CSS utilitaire qui permet de construire rapidement des interfaces propres et responsives.

- 📦 Si non installé : [Guide d’installation Tailwind pour Rails](https://tailwindcss.com/docs/guides/ruby-on-rails)
- Exemple d’usage :

```html
<h1 class="text-4xl font-bold text-center text-red-600">Simulez des combats légendaires de boxe !</h1>
```

#### B. Ou design personnalisé via `app/assets/stylesheets`

- Crée ou modifie un fichier `.css` (ex : `home.css`)
- L’associer à la vue via `stylesheet_link_tag` si nécessaire
- Exemple :

```css
.cta-button {
  background-color: #e63946;
  color: white;
  padding: 1rem 2rem;
  font-size: 1.25rem;
  border-radius: 8px;
}
```

---

## 📌 Composants à inclure

| Élément                        | Détails                                                                 |
|-------------------------------|-------------------------------------------------------------------------|
| `h1` principal                 | Titre accrocheur en haut de page                                       |
| Texte introductif             | Une ou deux phrases de contexte                                        |
| Bouton CTA                    | "Simuler un combat" → redirige vers la simulation                     |
| Lien "Boxeurs"                | En haut à droite, mène à `/boxers` ou route équivalente               |
| Section “Combats populaires”  | Présente un ou plusieurs affrontements avec visuels ou données fictives |
| Responsive design             | Fonctionne sur mobile, tablette, desktop                              |

---

## 📄 Exemple d’aperçu

Tu peux te baser (pas obligatoire) sur la maquette donnée sur slack pour construire la page d'accueil':

---

Besoin d’aide sur l’intégration ou le layout ? N’hésite pas à consulter la doc officielle de Tailwind :  
🔗 [https://tailwindcss.com/docs](https://tailwindcss.com/docs)



---


# J1 : 🥊 Boxeurs Olympiques – Initialisation de la base de données

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

