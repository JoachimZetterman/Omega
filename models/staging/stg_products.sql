{{ config(materialized='view') }}

SELECT 
    "ProductID" AS product_id,
    "Category" AS category,
    "Price" AS price,
    "CreatedAt" AS created_at,
    CURRENT_DATE as ingestion_date
FROM {{ ref('product_raw') }} 