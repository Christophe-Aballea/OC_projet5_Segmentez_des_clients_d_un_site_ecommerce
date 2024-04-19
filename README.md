# OC Projet 5 - Segmentez des clients d'un site ecommerce  

## Notebook 2 - Analyse exploratoire et premier feature ingineering  


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


