Based on your Snowflake project, screenshots, and SQL scripts, here is an updated README.md that highlights your Snowflake skills and demonstrates the Bronze, Silver, and Gold architecture you implemented. The project includes database design, schema management, data loading, data cleaning, and business reporting using Snowflake SQL.

Employee Management Data Warehouse Project (Snowflake)
Overview

This project demonstrates my ability to design and implement a modern data warehouse solution in Snowflake using the Medallion Architecture (Bronze, Silver, and Gold Layers).

The solution follows industry-standard data engineering practices by:

Loading raw employee data into a Bronze layer
Cleaning and transforming data in a Silver layer
Creating business-ready aggregates and KPIs in a Gold layer
Using Snowflake SQL for data processing and analytics
Technologies Used
Snowflake
SQL
Data Warehousing
ETL / ELT Processes
Medallion Architecture
Data Cleaning & Transformation
Data Aggregation & Reporting
Git & GitHub
Project Architecture
Bronze Layer (Raw Data Ingestion)

Created a raw employee table and loaded employee data into Snowflake.

Key Skills Demonstrated

Database creation
Schema design
Table creation
Data ingestion
Synthetic data generation using GENERATOR()
Data validation

Example:

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(255),
    department STRING,
    salary NUMBER(10,2),
    hire_date DATE
);


Additional records were generated using Snowflake functions:

SELECT
    151 + ROW_NUMBER() OVER (ORDER BY SEQ4()) AS employee_id,
    'Employee_' || ROW_NUMBER() OVER (ORDER BY SEQ4()) AS employee_name
FROM TABLE(GENERATOR(ROWCOUNT => 50));


Skills:

Snowflake DDL
Snowflake DML
ROW_NUMBER()
GENERATOR()
Sequence generation
Data loading
Silver Layer (Data Cleaning & Transformation)

Created a cleansed data layer to improve data quality.

Transformations performed:

✅ Trimmed extra spaces

✅ Standardized department names

✅ Removed duplicate records

✅ Removed unwanted generated employee records

Example:

CREATE OR REPLACE TABLE SILVER.EMPLOYEES AS
SELECT
    employee_id,
    TRIM(employee_name) AS employee_name,
    UPPER(TRIM(department)) AS department,
    salary,
    hire_date
FROM BRONZE.EMPLOYEES;


Duplicate removal:

ROW_NUMBER() OVER (
    PARTITION BY employee_id
    ORDER BY employee_id
)


Data quality cleanup:

DELETE FROM SILVER.EMPLOYEES
WHERE employee_name LIKE 'Employee_%';


Skills:

Data Cleansing
TRIM()
UPPER()
ROW_NUMBER()
Window Functions
Duplicate Removal
Data Quality Management
ETL Transformations
Gold Layer (Business Reporting)

Built business-ready reporting tables for analytics and decision-making.

Department Salary Summary
CREATE OR REPLACE TABLE GOLD.DEPARTMENT_SALARY_SUMMARY AS
SELECT
    department,
    COUNT(*) AS total_employees,
    AVG(salary) AS avg_salary,
    SUM(salary) AS total_salary
FROM SILVER.EMPLOYEES
GROUP BY department;


Produces:

Total employees per department
Average salary per department
Total salary expenditure per department
Company KPIs
CREATE OR REPLACE TABLE GOLD.COMPANY_KPIs AS
SELECT
    COUNT(*) AS total,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM SILVER.EMPLOYEES;


Produces:

Total employees
Highest salary
Lowest salary

Skills:

Data Aggregation
KPI Development
Business Intelligence
Reporting Tables
SUM()
AVG()
COUNT()
MIN()
MAX()
Grouping & Analytics
Snowflake Skills Demonstrated
Data Warehousing
Medallion Architecture
Bronze / Silver / Gold Layer Design
Data Modeling
Data Pipeline Development
Snowflake SQL
DDL Commands
DML Commands
Data Manipulation
Schema Management
Table Management
Database Administration
Data Transformation
Data Cleaning
Standardization
Deduplication
Data Validation
Data Quality Checks
Analytics
KPI Generation
Aggregations
Department-Level Reporting
Performance Metrics
Advanced SQL
Window Functions
ROW_NUMBER()
CASE Statements
Aggregate Functions
Date Functions
Project Outcomes

✔ Designed a complete Snowflake Data Warehouse

✔ Implemented Medallion Architecture

✔ Created Bronze, Silver, and Gold schemas

✔ Performed data cleansing and transformation

✔ Built aggregated business reporting tables

✔ Generated employee and department KPIs

✔ Demonstrated end-to-end ELT workflow using Snowflake SQL

Author

Phila Zungu
 ICT Professional | Data Engineering Enthusiast

Core Skills
Snowflake
SQL
Data Warehousing
ETL / ELT
Data Modeling
Data Analytics
Git & GitHub
Database Administration

This project showcases practical experience in building scalable data warehouse solutions using Snowflake and industry-standard data engineering practices.
