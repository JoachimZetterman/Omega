{{ config(materialized='table') }}

SELECT 
    md5(product_id::text || ingestion_date::text) as product_sk,
    product_id,
    category,
    price,
    created_at AS effective_date,
    NULL AS end_date,
    TRUE AS current_flag
FROM {{ ref('stg_products') }}