{{ config(materialized='table') }}

SELECT *
FROM {{ ref('stg_product') }}