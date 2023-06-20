{{ config(materialized='view') }}

-- Customers total amount of spending instances

SELECT 
    customer_id, 
    COUNT(*) as purchase_count
FROM {{ ref('fct_transactions') }} as fct_transactions
JOIN {{ ref('dim_customers') }} as dim_customers
ON fct_transactions.customer_sk = dim_customers.customer_sk
GROUP BY customer_id