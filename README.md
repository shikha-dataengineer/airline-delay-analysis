# ✈️ Airline Delay Analytics using dbt + BigQuery

This project demonstrates a modern data engineering workflow using **dbt (data build tool)** and **Google BigQuery**, applied to historical airline delay data.

---

## 📌 Project Objective

To showcase the use of **dbt for data modeling and transformation** on a cloud data warehouse (BigQuery), using a real-world dataset on airline delays.

---

## 🛠️ Tech Stack

- **dbt (data build tool)** – for transformation, testing, and modular SQL modeling
- **Google BigQuery** – as the cloud data warehouse
- **CSV Dataset** – historical airline delay data
- **Google Cloud CLI / dbt CLI** – to deploy and run models

  ## 🚀 Project Workflow

1. **Ingested** the CSV file into BigQuery (raw layer).
2. **Created dbt project** with a staging model:
   - Casted numeric fields (e.g., `arr_flights`, `arr_delay`) from strings.
   - Handled missing/null values safely.
3. **Built a view** `stg_airline_delay` in BigQuery using dbt.
4. **Validated** transformations by:
   - Checking row counts.
   - Identifying missing or malformed values.
  
##  Usage

- Run the checker:
 1. dbt clean
 2. dbt run
