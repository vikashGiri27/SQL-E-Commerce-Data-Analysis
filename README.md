# SQL E-Commerce Data Analysis

A comprehensive SQL data analysis project using the **Olist Brazilian E-Commerce Dataset**. This project demonstrates SQL skills ranging from database setup and single-table queries to advanced multi-table analysis using joins, aggregations, Common Table Expressions (CTEs), subqueries, and window functions to solve real-world business problems.

---

## Table of Contents

- [About the Project](#about-the-project)
- [Dataset Details](#dataset-details)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Database Schema](#database-schema)
- [SQL Analysis](#sql-analysis)
- [Key Business Insights](#key-business-insights)
- [Technologies Used](#technologies-used)
- [Future Work](#future-work)
- [License](#license)
- [Contact](#contact)

---

# About the Project

This project focuses on analyzing an e-commerce database using SQL. The dataset contains information about customers, orders, products, sellers, payments, reviews, and geolocation data from the **Olist Brazilian E-Commerce platform**.

The objective is to demonstrate practical SQL skills by answering business questions through data exploration and analysis.

## Goals

- Design and populate a relational database.
- Perform SQL-based business analysis.
- Explore customer purchasing behavior.
- Analyze sales performance and revenue.
- Practice SQL joins, aggregations, CTEs, subqueries, and window functions.
- Solve real-world business problems using SQL.

---

# Dataset Details

**Dataset:** Olist Brazilian E-Commerce Public Dataset

### Tables Included

- Customers
- Orders
- Order Items
- Payments
- Reviews
- Products
- Sellers
- Geolocation
- Product Category Translation

### Data Includes

- Customer information
- Seller information
- Product details
- Order history
- Payment methods
- Customer reviews
- Geographic locations
- Product categories
- Order timestamps

---

# Project Structure

```text
SQL-E-COMMERCE-DATA-ANALYSIS
│
├── Combined_Analysis/
│   └── Combined_Analysis.sql          # Advanced SQL analysis using joins, CTEs, window functions
│
├── Database/
│   ├── Olist_Database_Setup.sql       # Database creation and setup
│   ├── olist_customers_dataset.csv
│   ├── olist_geolocation_dataset.csv
│   ├── olist_order_items_dataset.csv
│   ├── olist_order_payments_dataset.csv
│   ├── olist_order_reviews_dataset.csv
│   ├── olist_orders_dataset.csv
│   ├── olist_products_dataset.csv
│   ├── olist_sellers_dataset.csv
│   └── product_category_name_translation.csv
│
├── Single_Table_Queries/
│   └── Single_Table_Queries.sql       # Basic SQL queries on individual tables
│
├── .env
├── .gitignore
└── README.md
```

---

# Getting Started

## Prerequisites

- MySQL 8.0+
- MySQL Workbench (Recommended)
- Any SQL Client
  - DBeaver
  - HeidiSQL
  - phpMyAdmin

---

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/SQL-E-COMMERCE-DATA-ANALYSIS.git

cd SQL-E-COMMERCE-DATA-ANALYSIS
```

---

### 2. Create the Database

Open and execute

```text
Database/Olist_Database_Setup.sql
```

This script will:

- Create the database
- Create all required tables
- Import the CSV datasets
- Define relationships between tables

---

### 3. Run SQL Queries

Execute the SQL scripts in the following order:

```text
Single_Table_Queries/
```

Practice basic SQL operations.

Then execute

```text
Combined_Analysis/
```

for advanced business analysis.

---

# Database Schema

The project consists of multiple related tables.

## Main Tables

- Customers
- Orders
- Order Items
- Products
- Sellers
- Payments
- Reviews
- Geolocation

## Relationships

- One customer can place multiple orders.
- One order contains multiple order items.
- Each order item references one product.
- Products belong to categories.
- Sellers fulfill products.
- Payments are associated with orders.
- Reviews are linked to completed orders.

---

# SQL Analysis

The project demonstrates SQL concepts from beginner to advanced.

## Single Table Queries

- SELECT
- WHERE
- ORDER BY
- LIMIT
- DISTINCT
- LIKE
- BETWEEN
- IN
- Aggregate Functions

---

## Multi-Table Analysis

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Multiple Table Joins

---

## Aggregate Analysis

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- GROUP BY
- HAVING

---

## Advanced SQL

- Common Table Expressions (CTEs)
- Subqueries
- Correlated Subqueries
- CASE Statements
- Window Functions
  - ROW_NUMBER()
  - RANK()
  - DENSE_RANK()
  - LAG()
  - LEAD()
- Date Functions

---

# Key Business Insights

This project answers business questions such as:

- Total number of customers
- Total number of orders
- Monthly sales trends
- Top-selling products
- Highest revenue-generating products
- Best-performing sellers
- Most popular payment methods
- Average order value
- Customer purchasing frequency
- Product category performance
- Delivery performance analysis
- Customer review distribution
- Geographic distribution of customers
- Sales ranking using window functions

---

# Technologies Used

- SQL
- MySQL
- MySQL Workbench
- Olist Brazilian E-Commerce Dataset
- Git
- GitHub

---

# Future Work

- Build a Power BI dashboard using the SQL database.
- Create stored procedures and SQL functions.
- Implement indexes for query optimization.
- Add views for business reporting.
- Perform customer segmentation (RFM Analysis).
- Build sales forecasting using Python.
- Integrate Tableau dashboards.

---

# License

This project is distributed under the **MIT License**.

See the `LICENSE` file for more information.

---

# Contact

**Vikash Giri**

For questions, suggestions, or collaboration opportunities, feel free to reach out via GitHub.