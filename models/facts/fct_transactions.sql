{{ config(materialized='table') }}

SELECT 
    transaction_id,
    customer_id,
    product_id,
    store_id,
    date,
    amount,
    CURRENT_DATE AS effective_date, --TODO: consider using seeds ingestion time
    NULL AS end_date,
    TRUE AS current_flag 
FROM {{ ref('stg_transactions') }}