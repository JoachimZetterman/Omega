{{ config(materialized='view') }}

SELECT 
    "TransactionID" as transaction_id,
    "CustomerID" AS customer_id,
    "ProductID" AS product_id,
    "StoreID" AS store_id,
    "Date" as date,
    "Amount" AS amount,
    CURRENT_DATE as ingestion_date
FROM {{ ref('sales_raw') }} 