# Data-Analyst--Sales-Trend-Analysis-Using-Aggregations-Task6
# 📈 Sales Trend Analysis using SQL Aggregations

This repository contains the solution for **Task 6: Sales Trend Analysis** as part of the **Elevate Labs Data Analyst Internship** program.

---

## 🎯 Objective
The goal of this project is to analyze the **`online_sales`** dataset to identify and understand **monthly trends** in revenue and order volume.  
This is achieved by writing an **SQL script** to aggregate sales data by **year** and **month**.

---

## 💾 Dataset
The analysis is performed on the **`online_sales`** dataset, which contains an `orders` table with the following relevant columns:

- **`order_id`** – A unique identifier for each order.  
- **`order_date`** – The date the order was placed.  
- **`amount`** – The total revenue from the order.

📥 **Download Dataset:** [Online Sales Dataset – Kaggle](https://www.kaggle.com/datasets/shreyanshverma27/online-sales-dataset-popular-marketplace-data)

---

## 🛠️ Tools Used
- SQL (**PostgreSQL / MySQL / SQLite**)

---

## ⚙️ Analysis Approach
1. **Extract** `Year` and `Month` from the `order_date`.
2. **Aggregate revenue** using `SUM(amount)` for each month.
3. **Aggregate order volume** using `COUNT(DISTINCT order_id)`.
4. **Group results** by `Year` and `Month`.
5. **Sort results** chronologically.

---

##  Output
| Year | Month | Monthly Revenue | Monthly Orders |
|------|-------|-----------------|----------------|
| 2023 | 1     | 12,000          | 45             |
| 2023 | 2     | 15,000          | 53             |
| 2023 | 3     | 9,800           | 39             |

## ❓ Interview Questions & Answers
This section covers the interview questions provided as part of the task.

<details>
<summary>Click to expand and see questions & answers</summary>

**1. How do you group data by month and year?**  
Use the `GROUP BY` clause after extracting the year and month from a date column:  
`EXTRACT(YEAR FROM order_date)` and `EXTRACT(MONTH FROM order_date)`.

**2. What's the difference between `COUNT(*)` and `COUNT(DISTINCT col)`?**  
- `COUNT(*)` counts all rows in a group.  
- `COUNT(DISTINCT col)` counts only the unique values in the specified column.

**3. How do you calculate monthly revenue?**  
Apply the `SUM()` aggregate function to the revenue column after grouping by month:  
`SUM(amount)`.

**4. What are aggregate functions in SQL?**  
Functions that perform a calculation on a set of rows and return a single summary value.  
Examples: `SUM()`, `COUNT()`, `AVG()`, `MIN()`, `MAX()`.

**5. How to handle NULLs in aggregates?**  
- Most aggregates ignore `NULL` values by default.  
- `COUNT(*)` counts all rows, including those with `NULL`s.  
- Use `COALESCE(col, 0)` to treat `NULL`s as zero.

**6. What's the role of `ORDER BY` and `GROUP BY`?**  
- `GROUP BY` is used to combine rows with identical values into summary rows.  
- `ORDER BY` sorts the final result set.

**7. How do you get the top 3 months by sales?**  
Sort results by revenue in descending order:  
`ORDER BY monthly_revenue DESC`  
Then limit results:  
`LIMIT 3`.

</details>

