# SQL Aggregate Functions & Data Analysis

This module focuses on practicing SQL aggregate functions and analyzing employee data using Google BigQuery.

The queries are written as part of my SQL learning journey, with a focus on understanding how to summarize, group, filter, analyze, and sort data.

## Dataset Information

| Detail | Description |
|---|---|
| Database | `Db_1` |
| Table | `employees_practice` |
| Platform | Google BigQuery |
| Practice Questions | Q16–Q63 |

## Concepts Covered

### 1. Aggregate Functions
- `COUNT()` – Count records
- `SUM()` – Calculate total values
- `AVG()` – Calculate average values
- `MIN()` – Find minimum values
- `MAX()` – Find maximum values
- `COUNT(DISTINCT)` – Count unique values

### 2. Grouping and Filtering
- `GROUP BY` – Group records based on columns
- `HAVING` – Filter grouped results
- Combining multiple aggregate conditions
- Grouping using multiple columns

### 3. Conditional Analysis
- `CASE WHEN` statements
- Conditional counting using `SUM(CASE WHEN...)`
- Salary categorization (High, Medium, Low)
- Department-wise salary analysis

### 4. Sorting and Filtering
- `ORDER BY` with `ASC` and `DESC`
- Sorting using multiple columns
- Sorting grouped results
- `IN` operator
- `LIKE` operator
- `BETWEEN` operator
- Using `LIMIT`

### 5. HAVING Practice
- `HAVING` with `COUNT()`
- `HAVING` with `SUM()`
- `HAVING` with `AVG()`
- `HAVING` with `MIN()` and `MAX()`
- Combining `WHERE` and `HAVING`
- Multiple conditions using `AND`
- `HAVING` with `BETWEEN`
- `HAVING` with multiple columns in `GROUP BY`
- `HAVING` with `COUNT(DISTINCT)`
- Conditional aggregation with `HAVING`

### 6. Data Analysis Practice
- Employee count by department
- Department-wise salary summaries
- City-wise employee analysis
- Average, highest and lowest salary analysis
- Multiple-column grouping
- Finding employees based on salary and age

## Practice Overview

| Question Range | Practice Area |
|---|---|
| Q16–Q20 | Basic Aggregate Functions |
| Q21–Q25 | GROUP BY and Department Analysis |
| Q26–Q31 | HAVING and Combined Conditions |
| Q32–Q37 | CASE WHEN and Conditional Counting |
| Q38–Q44 | Advanced Aggregate Analysis |
| Q45–Q52 | Additional ORDER BY Practice |
| Q53–Q57 | Basic HAVING Practice |
| Q58–Q62 | Medium HAVING Practice |
| Q63 | Advanced HAVING Practice |

## Repository Structure

```text
02_Aggregate_Functions/
│
├── 02_AGGREGATE_FUNCTIONS.sql
└── README.md
```

## Learning Objectives

- Understand how aggregate functions work.
- Analyze grouped data using `GROUP BY`.
- Filter aggregated results using `HAVING`.
- Apply conditional logic using `CASE WHEN`.
- Sort query results using `ORDER BY`.
- Combine filtering and grouping conditions.
- Write SQL queries for practical data analysis scenarios.

## Tools Used

- Google BigQuery
- SQL
- GitHub

---

**Part of my SQL Learning Journey** — building a strong foundation in SQL through consistent hands-on practice.
