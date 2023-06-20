-- Check for duplicate product_id and effective_date combinations

SELECT product_id, effective_date
FROM {{ ref('dim_products') }}
GROUP BY product_id, effective_date
HAVING COUNT(*) > 1