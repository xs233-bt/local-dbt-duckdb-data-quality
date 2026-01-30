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

## 🛠️ Tech Stack

- **Python 3.12**
- **dbt-core**
- **dbt-duckdb**
- **DuckDB**
- **GitHub Actions** (CI)
- **CSV files** as raw data sources

---

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
