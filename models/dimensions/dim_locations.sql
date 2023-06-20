{{ config(materialized='table') }}

SELECT
    stg_locations.location_id,
    stg_locations.store_id,
    stg_stores.store_name,
    stg_locations.city,
    stg_locations.state,
    stg_locations.country,
    stg_locations.latitude,
    stg_locations.longitude
FROM {{ ref('stg_locations') }} as stg_locations
JOIN {{ ref('stg_stores') }} as stg_stores
ON stg_locations.store_id = stg_stores.store_id
