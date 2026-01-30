<img width="448" height="200" alt="image" src="https://github.com/user-attachments/assets/182aa5e6-6849-42c7-b5e7-0a51ca38d496" />


- Get python and install at least the version 3.10. On my side I have the version 3.12.3
- Install package in the venv
  - python3 -m venv venv
  - . venv/bin/activate
  - pip install -r requirements.txt

- Create sources:
  - Start DuckDB (it will create a local database file): `duckdb analytics.duckdb`
  - Check that DuckDB can see your CSV files
```commandline
SELECT * FROM read_csv_auto('data/raw_orders.csv');
SELECT * FROM read_csv_auto('data/raw_customers.csv');
```
  - Create raw tables 
```commandline
CREATE TABLE raw_orders AS
SELECT *
FROM read_csv_auto('data/raw_orders.csv');
CREATE TABLE raw_customers AS
SELECT *
FROM read_csv_auto('data/raw_customers.csv');
```
  - Check that everything is ok 
```commandline
SELECT * FROM raw_orders;
SELECT * FROM raw_customers;
```

  - Check if the table exists in the database: `duckdb analytics.duckdb`
![img.png](readme_images/img.png)
Here you can find the full commands 
![img.png](readme_images/img_create_sources.png)

- Run your first command:
  - dbt deps
  - dbt debug
  - dbt run

- See the result of the dbt run in a notebook: `duckdb analytics.duckdb -ui`
![img_1.png](readme_images/generate_notebook_duck_db.png)

![img_1.png](readme_images/notebook_duckdb.png)
