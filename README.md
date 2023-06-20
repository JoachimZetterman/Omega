
Project setup:
- Install postgres sql 
- Install dbt-postgres
    - Create a python virtual enviorment
    - For MAC: Set the postgres bin path so psycopg2 knows what pg_config to use.
    - % PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH" pip install dbt-postgres
- run dbt init 
- configure profiles.yml with db info (found in /Users/<user>/.dlt)
- run dbt debug to verify connection to database