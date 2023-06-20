{{ config(materialized='view') }}

SELECT 
    "ProductID" AS product_id,
    "Category" AS category,
    "Price" AS price,
    "CreatedAt" AS effective_date
FROM {{ ref('product_raw') }} 