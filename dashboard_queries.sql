-- En excluant les commandes annulées, quelles sont les commandes récentes de moins de 3 mois que les clients ont reçues avec au moins 3 jours de retard ?
SELECT order_id, customer_id, order_status, order_delivered_customer_date, order_estimated_delivery_date
FROM orders
WHERE order_status != 'canceled' -- Commandes non annulées
  AND julianday('now') - julianday(order_approved_at) <= 90  -- approuvées il y a au moins 3 mois
  AND julianday(order_delivered_customer_date) - julianday(order_estimated_delivery_date) >= 3; -- avec au moins 3 jours de retard



-- Qui sont les vendeurs ayant généré un chiffre d'affaires de plus de 100 000 Real sur des commandes livrées via Olist ?
SELECT seller_id, ROUND(SUM(price), 2) AS CA
FROM order_items
WHERE order_id IN (SELECT order_id
                   FROM orders
                   WHERE order_status='delivered')
GROUP BY seller_id
HAVING SUM(price) > 100000
ORDER BY CA DESC;



-- Qui sont les nouveaux vendeurs (moins de 3 mois d'ancienneté) qui sont déjà très engagés avec la plateforme (ayant déjà vendu plus de 30 produits) ?
WITH anciens_vendeurs AS (
    SELECT seller_id
    FROM order_items AS oi
    INNER JOIN orders AS o ON oi.order_id = o.order_id
    GROUP BY seller_id
    HAVING julianday('now') - julianday(MIN(order_approved_at)) >= 90
)

SELECT oi.seller_id, COUNT(oi.order_item_id) AS nombre_de_produits_vendus
FROM order_items AS oi
WHERE oi.seller_id NOT IN (SELECT seller_id FROM anciens_vendeurs)
GROUP BY oi.seller_id
HAVING COUNT(oi.order_item_id) > 30
ORDER BY nombre_de_produits_vendus DESC;



-- Quels sont les 5 codes postaux, enregistrant plus de 30 commandes, avec le pire review score moyen sur les 12 derniers mois ?
WITH orders_zip_codes AS (
    WITH
    valid_orders AS (
        SELECT order_id, customer_id
        FROM orders
        WHERE order_approved_at IS NOT NULL
            AND order_status != 'canceled'
            AND julianday(order_approved_at) >= julianday('now', '-1 years')
    ),
    zip_codes AS (
        SELECT customer_zip_code_prefix, COUNT(customer_id) AS nombre_de_commandes
        FROM customers
        GROUP BY customer_zip_code_prefix
        HAVING COUNT(customer_id) > 30
    )
    SELECT customer_zip_code_prefix, c.customer_id, order_id
    FROM valid_orders vo
    INNER JOIN customers c
    ON vo.customer_id = c.customer_id
    WHERE customer_zip_code_prefix IN (SELECT customer_zip_code_prefix FROM zip_codes)
    ORDER BY customer_zip_code_prefix
)
SELECT customer_zip_code_prefix, ROUND(AVG(review_score), 2) AS moyenne_review_scores
FROM orders_zip_codes ozc
LEFT JOIN order_reviews o
ON o.order_id = ozc.order_id
GROUP BY customer_zip_code_prefix
ORDER BY moyenne_review_scores ASC
LIMIT 5;
