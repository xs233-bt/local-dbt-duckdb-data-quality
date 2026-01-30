<img width="448" height="200" alt="image" src="https://github.com/user-attachments/assets/182aa5e6-6849-42c7-b5e7-0a51ca38d496" />


# Local dbt + DuckDB Data Quality Pipeline

This project demonstrates a **local-first analytics and data quality workflow**
using **dbt** and **DuckDB**, designed to validate data and build analytical
models **without relying on cloud infrastructure**, helping reduce cost and
iteration time during development.

---

## 🚀 Why this project

In many real-world data projects, running transformations and data quality
checks directly in the cloud can be expensive and slow during early
development.

This project shows how to:

- Run dbt models **locally**
- Perform **data quality validation** before cloud deployment
- Use DuckDB as a lightweight analytical engine
- Organize models using **staging / intermediate / marts** layers

---

## 🧪 dbt Execution and Testing

This project uses dbt to build analytical models and validate data quality through
model execution, schema tests, and unit tests.


 🔍 dbt debug

`dbt debug` verifies that the dbt project and environment are correctly configured
before any models are executed.

When run, dbt checks:
- The presence and validity of `dbt_project.yml`
- The existence and correctness of `profiles.yml`
- Database connectivity (DuckDB in this project)
- Adapter and dependency configuration

```bash
dbt debug


### ▶️ dbt run

`dbt run` materializes dbt models into the database.

When executed, dbt:
- Resolves model dependencies using `ref()`
- Executes models in dependency order
- Creates or replaces views and tables in DuckDB

```bash
dbt run

## ✅ dbt test

`dbt test` is used to **validate data quality and integrity** after dbt models
have been built. It ensures that analytical tables meet defined expectations
before they are used for reporting, analysis, or downstream pipelines.

---

### What `dbt test` Does

When executed, `dbt test`:
- Runs **schema tests** defined in `.yml` files
- Converts each test into a SQL query
- Fails if any query returns rows that violate the test condition

```bash
dbt test



## 🛠️ Tech Stack

- **Python 3.12**
- **dbt-core**
- **dbt-duckdb**
- **DuckDB**
- **GitHub Actions** (CI)
- **CSV files** as raw data sources


## 📂 Project Structure

```text
duckdb-main/
├── dbt/
│   └── customer_orders_analytics/
│       ├── data/                 # Raw CSV files
│       ├── models/
│       │   ├── stg/               # Staging models
│       │   ├── int/               # Intermediate models
│       │   └── marts/             # Final fact tables
│       ├── dbt_project.yml
│       ├── profiles.yml
│       └── check_data.py
├── requirements.txt
└── .github/workflows/             # CI pipeline
