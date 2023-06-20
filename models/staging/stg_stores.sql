{{ config(materialized='view') }}

SELECT 
    "StoreID" AS store_id,
    "StoreName" AS store_name,
    "Location" AS location_info --TODO: Review name 
FROM {{ ref('store_raw') }} 