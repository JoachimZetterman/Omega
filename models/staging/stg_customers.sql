{{ config(materialized='view') }}

SELECT 
    "CustomerID" AS customer_id,
    "FirstName" AS first_name,
    "LastName" AS last_name,
    "Email" AS email,
    "Phone" AS phone,
    CURRENT_DATE as ingestion_date
FROM {{ ref('customer_raw') }} 