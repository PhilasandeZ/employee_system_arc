Phila Zungu - Snowflake Data Engineering Portfolio
👋 About Me

I am an aspiring Data Engineer with hands-on experience in designing and implementing data warehouse solutions using Snowflake SQL and the Medallion Architecture (Bronze, Silver, Gold) approach.

My focus is on building scalable data pipelines, transforming raw data into trusted business-ready datasets, and creating reporting structures that support analytics and decision-making.

🛠️ Technical Skills
Data Warehousing
Snowflake Data Warehouse
Medallion Architecture (Bronze, Silver, Gold)
Schema Design
Data Modeling
ETL Development
SQL Development
DDL (CREATE, ALTER, DROP)
DML (INSERT, UPDATE, DELETE, MERGE)
Complex Joins
Window Functions
Aggregations
Stored Procedures (Basic)
Query Optimization
Data Transformation & Cleaning
Data Quality Validation
Deduplication
Data Standardization
Null Handling
Data Type Management
Business Rule Implementation
Snowflake Features
Databases
Schemas
Tables
Views
Stages
Data Loading
Virtual Warehouses
Role-Based Access Concepts
Version Control & Development Tools
Git
GitHub
Visual Studio Code
SQL Development
📊 Snowflake Data Warehouse Project
Project Overview

Built an Employee Management Data Warehouse using Snowflake following the Medallion Architecture framework.

The solution demonstrates how raw employee data is ingested, cleansed, validated, transformed, and aggregated into reporting-ready datasets.

🥉 Bronze Layer (Raw Data)
Purpose

Store data exactly as received from source files without applying business transformations.

Activities Performed
Imported CSV files into Snowflake.
Created Bronze schema and tables.
Loaded employee data into raw staging tables.
Preserved source data for auditing and reprocessing.
Sample Skills Demonstrated
SQL
CREATE OR REPLACE DATABASE employee_management;
 
CREATE OR REPLACE SCHEMA bronze;
 
CREATE OR REPLACE TABLE bronze.employees (
employee_id NUMBER,
employee_name VARCHAR,
department VARCHAR,
salary NUMBER,
hire_date DATE
);
🥈 Silver Layer (Cleansed Data)
Purpose

Transform and clean raw data into trusted datasets.

Activities Performed
Removed duplicate records.
Standardized employee names.
Validated salary information.
Handled null and blank records.
Applied business rules.
Improved data quality.
Skills Demonstrated
SQL
SELECT
employee_id,
TRIM(UPPER(employee_name)) AS employee_name,
department,
salary,
hire_date
FROM bronze.employees;
Data Quality Processes
TRIM()
UPPER()
ROW_NUMBER()
CASE Statements
Data Validation Checks
Duplicate Removal
🥇 Gold Layer (Business Reporting)
Purpose

Create business-ready datasets for analytics and reporting.

Activities Performed
Built departmental summaries.
Created salary analytics tables.
Generated KPI reporting datasets.
Produced aggregated business metrics.
Sample Gold Layer Query
SQL
CREATE OR REPLACE TABLE gold.department_salary_summary AS
 
SELECT
department,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
SUM(salary) AS total_salary
FROM silver.employees
GROUP BY department;
📈 Reporting & Analytics
Employee KPIs
Total Employees
Average Salary
Highest Salary
Lowest Salary
Salary by Department
Employees per Department
Example KPI Query
SQL
SELECT
COUNT(*) AS total_employees,
AVG(salary) AS avg_salary,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary
FROM silver.employees;
🚀 Snowflake Skills Demonstrated
Data Ingestion

✅ Load CSV Files into Snowflake

✅ Create Raw Landing Zones

✅ Build Bronze Layer Tables

✅ Manage Data Imports

Data Transformation

✅ Data Cleansing

✅ Data Validation

✅ Data Standardization

✅ Duplicate Removal

✅ Business Rule Application

Data Warehousing

✅ Database Design

✅ Schema Design

✅ Bronze-Silver-Gold Architecture

✅ Fact & Dimension Concepts

✅ Data Pipeline Development

SQL Capabilities

✅ Table Creation

✅ Data Manipulation

✅ Window Functions

✅ Aggregations

✅ Filtering

✅ Joins

✅ Ranking Functions

✅ Conditional Logic

Example Snowflake Functions Used
SQL
TRIM()
UPPER()
LOWER()
ROW_NUMBER()
COUNT()
SUM()
AVG()
MIN()
MAX()
DATEADD()
CASE
COALESCE()
📂 Project Structure
Plain Text
SNOWFLAKE-DATA-WAREHOUSE
│
├── Bronze
│ └── Raw Employee Data
│
├── Silver
│ └── Cleaned Employee Data
│
├── Gold
│ ├── Department Salary Summary
│ ├── Employee KPIs
│ └── Reporting Tables
│
└── README.md
🎯 Key Achievements
Designed a complete Snowflake Data Warehouse solution.
Implemented Bronze, Silver, and Gold schemas.
Imported and transformed employee datasets.
Applied data quality and cleansing rules.
Built reporting-ready Gold layer tables.
Developed reusable SQL scripts for ETL processes.
Demonstrated end-to-end data engineering workflow using Snowflake.
📚 Learning Focus

Currently expanding expertise in:

Snowflake Advanced Features
Data Engineering Best Practices
ETL Frameworks
Data Pipeline Automation
Cloud Data Platforms
Azure Data Factory
Databricks
Power BI
Git & CI/CD