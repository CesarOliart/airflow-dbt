# AIRFLOW 2.2 WITH DBT

  

In this repo you would get and airflow local environment with dbt (0.20.0) installed and ready to go

  
  

# Steps to Install

  

1. Install [Docker](https://www.docker.com/)

2. Install [Docker Compose](https://docs.docker.com/compose/install/)

3. On the .env add the AIRFLOW_UID ( to get this value execute echo -e "AIRFLOW_UID=$(id -u)" on terminal)

4. Add .env variables that are needed

5. Run docker-compose build, to build airflow image

6. Run docker-compose up airflow-init, init airflow postgress db

7. Run docker-compose up, up all airflow services

  

# For DBT:

Add your dbt project into ./dbt folder

Requirements:

1. dbt version supported == 0.20.0

2. Should include a ./dbt/profiles.yml to referrer it on airflow dags

3. There is a .env file with a few variables that would be required to set it up the dbt profile 