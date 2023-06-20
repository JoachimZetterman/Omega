{{ config(materialized='table') }}

SELECT 
    md5(customer_id::text || ingestion_date::text) as customer_sk,
    customer_id,
    first_name,
    last_name,
    email,
    phone,
    ingestion_date AS effective_date, --TODO: consider using seeds ingestion time
    NULL AS end_date,
    TRUE AS current_flag 
FROM {{ ref('stg_customers') }}