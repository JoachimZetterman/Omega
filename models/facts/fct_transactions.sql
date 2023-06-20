{{ config(materialized='table') }}

SELECT 
    md5(transaction_id::text || ingestion_date::text) as transaction_sk,
    md5(customer_id::text || ingestion_date::text) as customer_sk,
    md5(product_id::text || ingestion_date::text) as product_sk,
    md5(store_id::text || ingestion_date::text) as location_sk,
    transaction_id,
    date,
    amount,
    date AS effective_date, --TODO: consider using seeds ingestion time
    NULL AS end_date,
    TRUE AS current_flag 
FROM {{ ref('stg_transactions') }}