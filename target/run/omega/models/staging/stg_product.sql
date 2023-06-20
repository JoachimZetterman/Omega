
  create view "jzehqz"."dbt_jzehqz"."stg_product__dbt_tmp"
    
    
  as (
    

SELECT 
    ProductID AS product_id,
    Category AS category,
    Price AS price,
    CreatedAt AS created_at
FROM "jzehqz"."dbt_jzehqz"."product_raw"
  );