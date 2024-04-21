# OC Projet 5 - Segmentez des clients d'un site ecommerce  

## Notebook 2 - Feature ingineering  


#### 22-04 19:57  
* Ajout fonction `install_package()` : installation des librairies uniquement si elles ne le sont pas déjà.    

#### 22-04 19:45
* Ajout feature `Fréquence`

#### 22-04 16:41  
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


