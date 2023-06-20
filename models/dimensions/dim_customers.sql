{{ config(materialized='table') }}

SELECT 
    customer_id,
    first_name,
    last_name,
    email,
    phone,
    CURRENT_DATE AS effective_date, --TODO: consider using seeds ingestion time
    NULL AS end_date,
    TRUE AS current_flag 
FROM {{ ref('stg_customers') }}