{{ config(materialized='table') }}

SELECT
    md5(stg_locations.location_id::text || stg_locations.ingestion_date::text) as location_sk,
    stg_locations.location_id,
    stg_locations.store_id,
    stg_stores.store_name,
    stg_locations.city,
    stg_locations.state,
    stg_locations.country,
    stg_locations.latitude,
    stg_locations.longitude,
    stg_locations.ingestion_date AS effective_date, --TODO: consider using seeds ingestion time
    NULL AS end_date,
    TRUE AS current_flag 
FROM {{ ref('stg_locations') }} as stg_locations
JOIN {{ ref('stg_stores') }} as stg_stores
ON stg_locations.store_id = stg_stores.store_id
