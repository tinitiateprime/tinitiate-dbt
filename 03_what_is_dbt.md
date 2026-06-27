# What is dbt?

[← Back to Contents](README.md#course-contents) · [⌂ Back to Home Page](README.md)

## Tinitiate AI Solutions

### dbt Analytics Engineering Bootcamp

---

# Chapter Overview

Organizations today generate enormous amounts of data from systems such as Salesforce, SAP, Workday, Shopify, ServiceNow, Oracle, PostgreSQL, and many other applications.

Although data is stored inside modern cloud warehouses such as Snowflake, the data is rarely ready for business reporting.

Raw tables often contain:

* Technical column names
* Duplicate records
* Missing values
* Inconsistent formats
* Complex relationships

Business users require trusted, well-documented, business-friendly datasets.

This challenge led to the creation of dbt.

---

# Learning Objectives

After completing this chapter, you will be able to:

* Define dbt
* Explain why dbt was created
* Understand the role of dbt in Analytics Engineering
* Explain where dbt fits in Modern Data Stack
* Identify the major capabilities of dbt
* Understand common misconceptions about dbt
* Describe how organizations use dbt in production

---

# Understanding the Problem

Before understanding dbt, we must understand the challenge it solves.

Imagine a retail company.

The company has:

* Customer Data
* Product Data
* Order Data
* Employee Data
* Financial Data

These datasets originate from different systems.

### Source Systems

```text
Salesforce
SAP
Workday
Shopify
Oracle
```

Data Engineers load this information into Snowflake.

At this point many people assume reporting can begin.

Unfortunately, this assumption is incorrect.

---

# Why Raw Data Is Difficult To Use

Consider the following employee table.

| empno | ename | deptno |
| ----- | ----- | ------ |
| 7369  | smith | 20     |
| 8015  | sIMON | 30     |

From a database perspective, the table is valid.

From a business perspective, there are several issues.

Questions business users might ask:

* What is empno?
* What is deptno?
* Why are names inconsistent?
* What department is represented by 20?

The data exists, but it is not business-ready.

---

# Business Expectations

Business users prefer:

| employee_id | employee_name | department_name |
| ----------- | ------------- | --------------- |
| 7369        | Smith         | Research        |
| 8015        | Simon         | Sales           |

Notice the differences.

### Improvements

Raw Data:

* Technical Names
* Difficult to Understand

Business Data:

* Clear Names
* Consistent Values
* Business Context

This transformation process is where dbt becomes valuable.

---

# What Does dbt Stand For?

dbt stands for:

**Data Build Tool**

The name reflects its primary purpose.

dbt builds analytical datasets from raw data.

---

# Official Definition

dbt is an Analytics Engineering framework that enables teams to:

* Transform Data
* Test Data
* Document Data
* Manage Dependencies
* Generate Lineage
* Reuse Logic
* Deploy Transformations

using SQL.

---

# Simple Definition

For beginners:

dbt is a tool that converts raw data into business-ready data.

This simple definition is sufficient for most new learners.

As students gain experience, they will learn additional capabilities.

---

# Why Was dbt Created?

Before dbt, organizations commonly maintained hundreds of SQL scripts.

Example:

```sql
create table customer_summary as ...

create table sales_summary as ...

create table revenue_summary as ...
```

These scripts often existed:

* In emails
* On developer laptops
* In shared folders
* In undocumented databases

This created serious problems.

---

# Problem 1 – No Standardization

Different developers followed different naming conventions.

Example:

Developer A:

```sql
customer_summary
```

Developer B:

```sql
cust_sum
```

Developer C:

```sql
customer_final_v3
```

Over time the environment became difficult to manage.

---

# Problem 2 – No Documentation

Organizations frequently encountered questions such as:

* Who created this table?
* Why was it created?
* What business logic does it contain?

In many cases, nobody knew the answer.

---

# Problem 3 – No Testing

Bad data entered production systems.

Examples:

* Duplicate customer IDs
* Missing employee IDs
* Invalid dates
* Incorrect calculations

Reports became unreliable.

---

# Problem 4 – No Dependency Tracking

Suppose:

```text
customer_summary
      ↓
sales_dashboard
      ↓
executive_report
```

If customer_summary changes, what breaks?

Without dependency tracking, the answer is difficult to determine.

---

# Problem 5 – SQL Duplication

Developers copied the same SQL repeatedly.

The same business rule might appear in:

* 10 Reports
* 20 Dashboards
* 50 SQL Scripts

When the rule changed, updates became expensive and error-prone.

---

# How dbt Solves These Problems

dbt introduces software engineering principles into analytics.

### Transformation

Organized SQL models.

### Testing

Automated data quality validation.

### Documentation

Automatic project documentation.

### Lineage

Dependency tracking.

### Reusability

Macros and packages.

### Version Control

Git integration.

---

# Where dbt Fits

One of the most important concepts students must understand is where dbt operates.

Modern Architecture:

```text
Salesforce
SAP
Workday

      ↓

Fivetran
AppFlow
Airbyte

      ↓

Snowflake

      ↓

dbt

      ↓

Business Models

      ↓

Power BI
Tableau
Looker
```

dbt operates after data reaches Snowflake.

This distinction is extremely important.

# What dbt Does and Does Not Do

One of the most common misconceptions among beginners is misunderstanding the role of dbt.

Many students assume that dbt:

* Extracts data from source systems
* Loads data into Snowflake
* Replaces ETL tools
* Replaces Data Warehouses

These assumptions are incorrect.

Understanding what dbt does and does not do is critical.

---

# What dbt Does

dbt focuses on transforming data that already exists inside a data warehouse.

dbt provides the following capabilities:

## Data Transformation

dbt transforms raw data into business-ready datasets.

Example:

Raw Employee Table

| empno | ename | deptno |
| ----- | ----- | ------ |
| 7369  | smith | 20     |

Business Model

| employee_id | employee_name | department_name |
| ----------- | ------------- | --------------- |
| 7369        | Smith         | Research        |

Transformation is the core purpose of dbt.

---

## Data Testing

dbt enables teams to validate data quality automatically.

Examples:

* Employee IDs should be unique
* Customer IDs cannot be null
* Orders must reference valid customers

Without testing, reporting becomes unreliable.

---

## Documentation

dbt automatically generates documentation.

Documentation includes:

* Models
* Columns
* Descriptions
* Dependencies

Documentation helps new team members understand projects quickly.

---

## Data Lineage

Lineage shows how data flows through the system.

Example:

```text
employees.emp
      ↓
stg_emp
      ↓
dim_employee
      ↓
Employee Dashboard
```

This visibility is extremely valuable in enterprise environments.

---

## Reusable Logic

dbt supports reusable code through macros.

Instead of writing the same SQL repeatedly, teams can define logic once and reuse it throughout the project.

Benefits include:

* Consistency
* Maintainability
* Reduced development effort

---

# What dbt Does NOT Do

Understanding these limitations is important.

---

## dbt Does Not Extract Data

dbt does not connect to Salesforce and download records.

dbt does not connect to SAP and extract transactions.

Extraction is performed by:

* Fivetran
* Airbyte
* AppFlow
* Informatica
* Custom Pipelines

---

## dbt Does Not Load Data

dbt does not move data into Snowflake.

Loading is performed by ingestion tools.

Example:

```text
Salesforce
      ↓
Fivetran
      ↓
Snowflake
```

dbt starts only after the data reaches Snowflake.

---

## dbt Does Not Replace Snowflake

Snowflake stores data.

dbt transforms data.

They work together.

A useful way to remember this:

| Technology | Responsibility       |
| ---------- | -------------------- |
| Snowflake  | Store & Process Data |
| dbt        | Transform Data       |
| Power BI   | Visualize Data       |

---

# Understanding dbt Through a Restaurant Analogy

One of the easiest ways to understand dbt is through a restaurant analogy.

Imagine a restaurant.

## Ingredients

Vegetables

Rice

Spices

Meat

These represent raw tables.

---

## Kitchen

The kitchen stores ingredients and provides cooking equipment.

This represents Snowflake.

---

## Chef

The chef transforms ingredients into meals.

This represents dbt.

---

## Customer

The customer consumes the final meal.

This represents Business Users.

---

The complete analogy:

| Data Platform | Restaurant    |
| ------------- | ------------- |
| Raw Tables    | Ingredients   |
| Snowflake     | Kitchen       |
| dbt           | Chef          |
| Dashboard     | Finished Meal |
| Business User | Customer      |

Without dbt:

Customers receive raw ingredients.

With dbt:

Customers receive finished meals.

This analogy is useful when explaining dbt to non-technical stakeholders.

---

# Core Components of dbt

A dbt project consists of several important components.

Students will learn each of these throughout the course.

---

## Models

Models are SQL files.

Example:

```sql
select
    empno as employee_id,
    ename as employee_name
from employees.emp
```

When dbt executes the model, it creates a table or view inside Snowflake.

Models are the foundation of dbt.

---

## Sources

Sources define raw tables.

Example:

```yaml
sources:
  - name: employees
    tables:
      - name: emp
```

Benefits:

* Consistency
* Documentation
* Lineage

---

## Tests

Tests validate data quality.

Example:

```yaml
tests:
  - unique
  - not_null
```

dbt can automatically verify:

* Uniqueness
* Null values
* Relationships
* Accepted values

---

## Documentation

dbt generates project documentation automatically.

Command:

```bash
dbt docs generate
```

Benefits:

* Self-service discovery
* Better collaboration
* Faster onboarding

---

## Snapshots

Snapshots track historical changes.

Example:

Employee Salary:

| Employee | Salary |
| -------- | ------ |
| John     | 50000  |

After change:

| Employee | Salary |
| -------- | ------ |
| John     | 60000  |

Snapshots preserve both versions.

This supports Slowly Changing Dimensions (SCD Type 2).

---

## Macros

Macros provide reusable SQL.

Example:

Instead of repeating:

```sql
initcap(trim(employee_name))
```

in 20 models, a macro can define it once.

Benefits:

* Reusability
* Standardization
* Easier maintenance

---

# Typical dbt Workflow

A common workflow looks like this:

```text
Raw Tables
     ↓
Sources
     ↓
Staging Models
     ↓
Intermediate Models
     ↓
Mart Models
     ↓
Dashboards
```

---

## Staging Layer

Purpose:

Clean raw data.

Examples:

```text
stg_emp
stg_dept
stg_projects
```

Tasks:

* Rename columns
* Standardize formats
* Remove unnecessary fields

---

## Intermediate Layer

Purpose:

Apply business logic.

Examples:

```text
int_employee_department
int_employee_projects
```

Tasks:

* Joins
* Calculations
* Business rules

---

## Mart Layer

Purpose:

Business-ready reporting.

Examples:

```text
dim_employee
fact_employee_projects
```

These models are consumed by reporting tools.

---

# Real Project Example

Throughout this bootcamp students will build an Employee Analytics platform.

Raw Tables:

```text
emp
dept
projects
emp_projects
salgrade
```

dbt Models:

```text
stg_emp
stg_dept

int_employee_department

dim_employee
fact_employee_projects
```

Reports:

```text
Employee Dashboard
Department Dashboard
Project Dashboard
```

This project mirrors real enterprise implementations.

---

# Instructor Talking Points

## Discussion Question

Ask:

Can Power BI directly connect to raw SAP tables?

Technically:

Yes.

Should it?

Usually No.

Why?

* Poor performance
* Inconsistent calculations
* Poor governance

This naturally introduces the transformation layer.

---

## Whiteboard Exercise

Draw:

```text
SAP
Salesforce
CSV

     ↓

Snowflake

     ↓

dbt

     ↓

Power BI
```

Walk through each component.

---

## Real-World Example

Discuss a company where:

Different teams calculate revenue differently.

Results:

* Multiple revenue numbers
* Executive confusion
* Loss of trust

Explain how dbt centralizes business logic.

---

# Common Mistakes

## Mistake 1

Thinking dbt loads data.

Reality:

dbt transforms data.

---

## Mistake 2

Thinking dbt replaces ETL.

Reality:

dbt complements ETL.

---

## Mistake 3

Thinking dbt replaces Snowflake.

Reality:

dbt works with Snowflake.

---

## Mistake 4

Skipping documentation.

Reality:

Documentation is a major benefit of dbt.

---

# Knowledge Check

1. What does dbt do?
2. What does dbt not do?
3. What are dbt models?
4. What are dbt tests?
5. What are snapshots?
6. What are macros?
7. Why is lineage important?

---

# Interview Questions

## Beginner

What is dbt?

What are the major capabilities of dbt?

What is a dbt model?

---

## Intermediate

How does dbt improve data quality?

How does dbt create lineage?

What is the purpose of snapshots?

---

## Scenario

A company has 500 SQL scripts and no documentation.

How would dbt help standardize development?

---

# Assignment

Create a one-page architecture diagram showing:

Source Systems

↓

Snowflake

↓

dbt

↓

Power BI

Label the responsibilities of each layer.

---

# Chapter Summary

In this chapter we learned:

* dbt stands for Data Build Tool.
* dbt transforms data already stored in a warehouse.
* dbt does not extract or load data.
* dbt provides models, tests, documentation, lineage, snapshots, and macros.
* dbt is a core component of Analytics Engineering.
* dbt enables organizations to build trusted, reusable, business-ready datasets.

---

[← Back to Contents](README.md#course-contents) · [⌂ Back to Home Page](README.md)
