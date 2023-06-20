{{ config(materialized='table') }}

SELECT 
    product_id,
    category,
    price,
    created_at AS effective_date,
    NULL AS end_date, -- add end_date column with NULL value
    TRUE AS current_flag -- add current_flag column with TRUE value
FROM {{ ref('stg_products') }}