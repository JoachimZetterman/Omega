{{ config(materialized='view') }}

SELECT 
    "LocationID" as location_id,
    "StoreID" as store_id,
    "City" AS city,
    "State" AS state,
    "Country" AS country,
    "Latitude" AS latitude,
    "Longitude" AS longitude,
    CURRENT_DATE as ingestion_date
FROM {{ ref('location_raw') }} 