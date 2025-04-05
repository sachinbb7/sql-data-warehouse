# Data Warehouse and Analytics Project -- inspired by Data with Baara

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀  
This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project, it highlights industry best practices in data engineering and analytics.

---
## 🏗️ Data Architecture

The data architecture for this project follows Medallion Architecture **Bronze**, **Silver**, and **Gold** layers:


1. **Bronze Layer**: Stores raw data as-is from the source systems. Data is ingested from CSV Files into SQL Server Database.
2. **Silver Layer**: This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.
3. **Gold Layer**: Houses business-ready data modeled into a star schema required for reporting and analytics.

---
## 📖 Project Overview

This project involves:

1. **Data Architecture**: Designing a Modern Data Warehouse Using Medallion Architecture **Bronze**, **Silver**, and **Gold** layers.
2. **ETL Pipelines**: Extracting, transforming, and loading data from source systems into the warehouse.
3. **Data Modeling**: Developing fact and dimension tables optimized for analytical queries.
4. **Analytics & Reporting**: Creating SQL-based reports and dashboards for actionable insights.



# 🧠 Data Warehouse Project

🎯 **This repository is an excellent resource for professionals and students looking to showcase expertise in:**

- SQL Development  
- Data Architecture  
- Data Engineering  
- ETL Pipeline Development  
- Data Modeling  
- Data Analytics  

---

## 🛠️ Important Links & Tools

Everything is **100% FREE**!

- **📊 Datasets:** Raw ERP & CRM data (CSV files)  
- **🗄️ SQL Server Express:** Lightweight server for your database  
- **🖥️ SQL Server Management Studio (SSMS):** GUI for managing your database  
- **🌐 GitHub Repository:** Version control & collaboration  
- **🧰 Draw.io:** For creating architecture, flows, and data models  
- **📝 Notion Project Template:** Track your project steps  
- **📌 Notion Tasks:** All project phases & task breakdown  

---

## 🚀 Project Requirements

### 🏗️ Building the Data Warehouse (Data Engineering)

**Objective:**  
Develop a modern data warehouse using SQL Server to consolidate sales data for analytical reporting.

**Key Specs:**

- **Data Sources:** Two source systems (ERP and CRM) as CSVs  
- **Data Quality:** Cleanse and resolve inconsistencies  
- **Integration:** Merge into a single star-schema model  
- **Scope:** Focus on the latest snapshot (no historization)  
- **Documentation:** Clear documentation for business & analytics use  

---

### 📈 BI & Analytics (Data Analysis)

**Objective:**  
Deliver SQL-based insights into:

- Customer Behavior  
- Product Performance  
- Sales Trends  

These insights enable stakeholders to make **strategic data-driven decisions**.

---

## 📂 Repository Structure

📁 data-warehouse-project/

📂 datasets/ — Raw datasets used for the project (ERP and CRM data)

📂 docs/ — Project documentation and architecture details

📝 etl.drawio — ETL techniques and methods

📝 data_architecture.drawio — Project architecture

📄 data_catalog.md — Dataset catalog with field descriptions and metadata

📝 data_flow.drawio — Data flow diagram

📝 data_models.drawio — Data models (star schema)

📄 naming-conventions.md — Naming guidelines for tables, columns, and files

📂 scripts/ — SQL scripts for ETL and transformations

📂 bronze/ — Extracting and loading raw data

📂 silver/ — Cleaning and transforming data

📂 gold/ — Creating analytical models

📂 tests/ — Data quality checks and validation scripts

📄 README.md — Project overview and instructions

📄 LICENSE — License information for the repository

📄 .gitignore — Git ignore rules

📄 requirements.txt — Dependencies and requirements for the project
'''
