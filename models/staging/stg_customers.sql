{{ config(materialized='view') }}

SELECT 
    "CustomerID" AS customer_id,
    "FirstName" AS first_name,
    "LastName" AS last_name,
    "Email" AS email,
    "Phone" AS phone
FROM {{ ref('customer_raw') }} 