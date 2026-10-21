# E-Commerce Customer & Order SQL Analysis

## 📌 Project Overview
This project demonstrates foundational relational database skills using SQLite and DBeaver. 
It models an e-commerce platform's customer transactions to analyze customer habits, order status distributions, and revenue metrics.

## 🛠️ Tech Stack
* **Database Engine:** SQLite
* **SQL Client:** DBeaver
* **Key SQL Concepts:** `INNER JOIN`, `LEFT JOIN`, `GROUP BY`, Aggregations (`COUNT`, `SUM`), `WHERE` filtering, NULL handling.

## 🗂️ Data Schema
The database consists of two tables linked via `customer_id`:
* `customers`: Stores user demographic and signup information (`customer_id`, `name`, `city`, `country`, `signup_date`).
* `orders`: Contains individual transaction details (`order_id`, `customer_id`, `order_date`, `total_amount`, `status`).

## 🔍 Sample Insights & Queries
* Identified top revenue-generating orders exceeding $100.
* Aggregated regional customer density showing highest concentrations in London and New York.
* Used `LEFT JOIN` analysis to identify inactive registered users with 0 order volume.
