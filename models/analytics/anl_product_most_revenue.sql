{{ config(materialized='view') }}

-- Products with most renvune (descending order)

SELECT 
    dim_products.product_id,
    SUM(fct_transactions.amount) as total_revenue
FROM {{ ref('fct_transactions') }} as fct_transactions
JOIN {{ ref('dim_products') }} as dim_products
ON fct_transactions.product_sk = dim_products.product_sk
GROUP BY dim_products.product_id
ORDER BY total_revenue DESC