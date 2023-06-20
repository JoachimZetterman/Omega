{{ config(materialized='view') }}

-- Retrives latest version of product using effective date. 

SELECT product_id, category, price, effective_date
FROM (
    SELECT product_id, category, price, effective_date,
    ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY effective_date DESC) as rn
    FROM {{ ref('dim_products') }}
) sub
WHERE rn = 1