{{ config(materialized='view') }}

-- Calculates the running total of the transactions

SELECT 
    transaction_id, 
    date, 
    amount,
    SUM(amount) OVER (ORDER BY date ASC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_total
FROM {{ ref('fct_transactions') }}