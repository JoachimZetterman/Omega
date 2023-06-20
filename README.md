# Omega

A dbt project following the star schema model using postgresql as database. 

## Project structure

### /models
Contains all models for the dbt project. 

Currently there are five type of models:
* stg: Staging models that interacts with CSV.
* dim: Dimension models 
* fct: Fact models
* trn: Generic transformations 
* anl: Analytics on customer behaviour, product performance, sales trends e.g.

### /seeds
Contains the csv files that are used in the project

### /tests
Contains the singular tests for specific busniess requirments

## Project setup:
- Install postgres sql 
- Install dbt-postgres
    - Create a python virtual enviorment
    - For MAC: Set the postgres bin path so psycopg2 knows what pg_config to use.
    - % PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH" pip install dbt-postgres
- run dbt init 
- configure profiles.yml with db info (found in /Users/user/.dlt)
- run dbt debug to verify connection to database

## Using psql: 
- Open terminal to db through postgresql app
- Start query and dont forget to end with ";"

## Running tests
Currently in project there is two types of unit tests, generic and singular tests.
* Generic can be found in the models folder define as a schema.yml. 
* Singular tests can be found in the /tests folder. 

To run unit tets: 
- dbt test