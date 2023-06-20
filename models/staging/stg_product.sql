{{ config(materialized='view') }}

SELECT 
    ProductID AS product_id,
    Category AS category,
    Price AS price,
    CreatedAt AS created_at
FROM {{ ref('product_raw') }} 