# OC Projet 5 - Segmentez des clients d'un site ecommerce  

## Notebook 3 - Tests de modèles de clustering


#### 26-04 11:43  
* Fonction `plot_elbow_nearest_neighbors()`
* Fonction `fit_dbscan()`
* Partie 6 : Test DBSCAN

#### 25-04 14:30  
* Partie 5 : test KMeans `Montant` classé par tranches
* Interprétation des 6 segments

#### 25-04 12:05  
* Fichier 'df_features_2.csv' avec classement par tranches

#### 25-04 12:00  
* *Feature ingineering `Montant` (Partie 5.6 du Notebook 2) : ajout classement par tranches*

#### 24-04 11:13  
* Fonction `fit_kmeans()`

#### 24-04 09:29  
* Fonction `plot_silhouettevisualizer()`

#### 24-04 08:29  
* Fonction `display_silhouette_scores()`  

#### 24-04 08:00  
* "Remise au propre" du notebook  
* Fonction `plot_kelbowvisualizer_kmeans()`
* Partie 3 : test KMeans `Montant` passé au log
* Partie 4 : test KMeans `Montant` normalisé par quantiles

#### 23-04 22:36  
* Dépot 'df_features_2.csv'

#### 23-04 22:34  
* *Feature ingineering `Montant` (Partie 5 du Notebook 2) : ajout normalisation par quantiles*

#### 23-04 17:20  
* Détermination du nombre optimal de clusters après transformation logarithmique `Montant`

#### 23-04 16:46
* *Feature ingineering `Montant` (Partie 5 du Notebook 2)*

#### 23-04 14:06  
* Analyse des clusters    
* Conclusion du test  

#### 23-04 08:22  
Détermination du nombre optimal de clusters

#### 22-04 23:06  
* Méthode Calinski-Harabasz

#### 22-04 18:59  
* Détermination nombre de clusters KMeans
* Méthode du coude
* Méthode du score de silhouette

#### 22-04 11:47  
* Chargement des données
* Premier test KMeans avec 5 clusters

#### 22-04 10:59  
* Premier dépôt du Notebook 3 'Tests de modèles de clustering'


## Notebook 2 - Feature ingineering  

#### 25-04 12:00  
* Ajout feature `Montant` classée par tranches

#### 23-04 22:34
* Normalisation par quantiles `Montant`

#### 22-04 16:46  
* Passage au log variable `Montant` (Partie 5)

#### 22-04 10:56  
* Dépôt fichier `df_features.csv`  

#### 22-04 10:42  
* Finalisation du dataset pour modèles
* Enregistrement `df_features.csv`

#### 22-04 09:41  
* Ajout de la normalisation des features RFM

#### 22-04 00:12  
* Calcul de la feature `Montant`  
* Création dataframe `df_features` avec les 3 features RFM  

#### 21-04 22:28  
* Suppression clé primaire table `order_items` sur le schéma relationnel

#### 21-04 22:18  
* Ajout début d'analyse de la table `order_items`
* Suppression des commandes `orders.order_id` sans produits `order_items.order_id`

#### 21-04 19:57  
* Ajout fonction `install_package()` : installation des librairies uniquement si elles ne le sont pas déjà.    

#### 21-04 19:45
* Ajout feature `Fréquence`

#### 21-04 16:41  
* Correction de l'analyse des valeurs aberrantes de la variable `order_purchase_timestamp`
* Restriction de la période d'étude : `order_purchase_timestamp` compris dans la plage Janvier 2017 - Août 2018

#### 21-04 01:23  
* Préparation dataframe `df_features`  
* Ajout feature `Récence`
* Suppression des commandes antérieures à janvier 2017

#### 20-04 22:52  
* Correction schéma relationnel : cardinalité relation `orders.customer_id` 1-1 `coutomers.customer_id`

#### 20-04 14:59  
* Dépôt du Notebook 2 'Feature ingineering' (VERSION EN COURS)
* Présentation et des features retenues
* Préparation de l'environnement
* Chargement des données

#### 19-04 23:20  
* Ajouts des fichiers csv des tables  

#### 19-04 21:26  
* Début analyses univariées table `products`

#### 19-04 13:57  
* Analyses univariées table `order_reviews`  

#### 19-04 10:01  
* Analyses univariées table `order_reviews`, champ `review_score`  

#### 19-04 09:35  
* Modification `transform_data_types()` : gestion des valeurs manquantes type 'string'

#### 19-04 08:50  
* Modification `transform_data_types()` : gestion des dates courtes

#### 19-04 00:55  
* Analyses univariées table `order_pymts`
  
#### 18-04 17:25  
* Analyses univariées table `order_items`  

#### 18-04 15:15  
* Ajout `df_order_products`
* Ajout `df_product_summary`  

#### 18-04 10:00  
* Ajout 'x_label' et 'y_label' fonction `plot_distribution()`

#### 18-04 08:40  
* Modification fonction `transform_data_types()` : ajout transformation en type 'category'
* Ajout vérificiation des transformations dans l'analyse univariées table `orders`
* Début analyses univariées table `order_items`  

#### 18-04 07:53  
* Fin analyses univariées table `orders`

#### 17-04 23:20  
* Ajout fonction `plot_distribution()` : histogramme + boxplot
* Début analyses univariées table `orders`
* Traitement valeurs manquantes `order_approved_at`, `order_delivered_carrier_date`, `order_delivered_customer_date`  
* Ajout features `approval_delay` et `shipping_preparation_delay`

#### 17-04 16:54  
* Ajout fonction `f_query_result()` : renvoit résultat requête SQL sous forme de dataframe
* Ajout fonction `transform_data_types()`  
* Ajout fonction `get_dataframe_infos()`  

#### 17-04 12:17  
* Changement de fonctionnement : 'ipython-sql' -> librairie 'sqlite3'
* Ajout fonction `query_result()`  
* Afout fonction `describe_table()`  

#### 16-04 21:06  
* Dépot Notebook 2 : Analyse exploratoire et premier feature ingineering  
* Début du Sommaire, préparation de l'environnement, connexion à la BDD

  
## Notebook 1 - Requêtes SQL pour dashboard  

#### 20-04 22:52  
* Correction schéma relationnel : cardinalité relation `orders.customer_id` 1-1 `customers.customer_id`

#### 20-04 15:12  
* Changement de nom du Notebook 1 en 'P05_Notebook1_Requetes_dashboard.ipynb'

#### 20-04 14:09  
* Mise à jour du schéma relationnel  

#### 20-04 11:51
* Ajout fichier `dashboard_queries.sql`

#### 20-04 11:49  
* Ajout partie 'Présentation du projet'
* Ajout 'Script final'

#### 16-04 19:48  
* Correction Sommaire

#### 16-04 18:01  
* Ajout Requête 4  

#### 16-04 15:23  
* Ajout Requête 3  

#### 16-04 09:30
* Correction relation `customer_id` sur le schéma relationnel

#### 16-04 08:37
* Requête 2

#### 15-04 23:59  
* Ajout "2.2.1 Analyse de la présentation du jeu de données"  
* Mise à jour schéma relationnel
* Correction passage variable `most_recent_date` en paramètre requête 1  


