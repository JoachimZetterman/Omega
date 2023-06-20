{{ config(materialized='view') }}

-- Total revune per month

SELECT 
    DATE_TRUNC('month', date) as month, 
    SUM(amount) as total_revenue
FROM {{ ref('fct_transactions') }}
GROUP BY month
ORDER BY month