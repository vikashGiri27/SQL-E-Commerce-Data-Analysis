# 🛒 SQL E-Commerce Data Analysis Project

A complete SQL data analysis project built using the **Brazilian Olist E-Commerce Dataset**.

This project demonstrates real-world SQL skills including:

- Data Cleaning
- Database Design
- Foreign Key Relationships
- Single Table Analysis
- Multi-Table Business Analysis
- Revenue Analysis
- Customer Analysis
- Product Analysis
- Seller Analysis
- Advanced SQL Queries

The project is continuously being updated with more advanced business analysis and SQL concepts.

---

# 📌 Project Objective

The objective of this project is to transform raw e-commerce CSV datasets into a structured SQL database and perform business analysis using SQL.

The project focuses on solving real business questions related to:

- Customers
- Orders
- Products
- Sellers
- Payments
- Reviews
- Revenue
- Sales Performance

---

# 📂 Project Structure

```
SQL-ECOMMERCE-DATA-ANALYSIS
│
├── Database
│   ├── Olist_Database_Setup.sql
│   ├── olist_customers_dataset.csv
│   ├── olist_orders_dataset.csv
│   ├── olist_order_items_dataset.csv
│   ├── olist_order_payments_dataset.csv
│   ├── olist_order_reviews_dataset.csv
│   ├── olist_products_dataset.csv
│   ├── olist_sellers_dataset.csv
│   ├── olist_geolocation_dataset.csv
│   └── product_category_name_translation.csv
│
├── Single_Table_Queries
│   └── Single_Table_Queries.sql
│
├── Combined_Analysis
│   └── Combined_Analysis.sql
│
├── README.md
└── .gitignore
```

---

# 📊 Dataset Information

Dataset Source:

**Olist Brazilian E-Commerce Public Dataset**

The dataset contains information about:

- Customers
- Orders
- Order Items
- Payments
- Reviews
- Products
- Sellers
- Geolocation

---

# 🗄 Database Design

The database consists of multiple related tables connected using **Primary Keys** and **Foreign Keys**.

Main Tables

- Customers
- Orders
- Order Items
- Products
- Sellers
- Payments
- Reviews
- Geolocation

---

# ⚙ Data Preparation

Before performing analysis:

- Imported all CSV datasets into MySQL.
- Created a relational database.
- Defined Primary Keys.
- Created Foreign Key relationships.
- Checked NULL values.
- Fixed incorrect data types.
- Converted date columns into SQL DateTime format.
- Verified data consistency.

---

# 📈 Analysis Performed

## 1. Customer Analysis

Examples:

- Total Customers
- Unique Customers
- Top Customer Cities
- Top Customer States
- One-Time Customers
- Average Orders per Customer
- Highest Spending Customers
- Customers Purchasing Maximum Products

---

## 2. Orders Analysis

Examples:

- Total Orders
- Orders by State
- Orders by Year
- Orders by Month
- Order Status Analysis

---

## 3. Product Analysis

Examples:

- Most Sold Products
- Least Sold Products
- Unsold Products
- Highest Revenue Products
- Average Product Price
- Product Category Revenue
- Monthly Top Selling Products

---

## 4. Seller Analysis *(In Progress)*

Planned Analysis:

- Top Sellers
- Highest Revenue Sellers
- Sellers with No Sales
- Average Orders per Seller
- Month-wise Best Seller
- Average Order Value per Seller

---

## 5. Revenue Analysis

Examples:

- Revenue by Year
- Revenue by Month
- Revenue by State
- Revenue by City
- Revenue by Product Category
- Running Revenue
- Average Revenue per Customer
- Average Revenue per Order

---

## 6. Payment Analysis *(Coming Soon)*

Planned Analysis:

- Payment Trends
- Payment Types
- Installment Analysis
- Payment Success Rate

---

## 7. Order Analysis *(Coming Soon)*

Planned Analysis:

- Delivery Performance
- Shipping Time
- Late Deliveries
- Order Lifecycle
- Order Status Trends

---

## 8. Advanced SQL Analysis *(Coming Soon)*

Topics include:

- Window Functions
- Common Table Expressions (CTEs)
- Ranking Functions
- Running Totals
- Rolling Average
- Recursive Queries
- Business KPIs
- Customer Segmentation
- Cohort Analysis
- RFM Analysis

---

# 🛠 SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- CASE WHEN
- Subqueries
- Common Table Expressions (CTE)
- Window Functions
- DENSE_RANK()
- ROW_NUMBER()
- Date Functions
- Aggregate Analysis

---

# 📌 Business Questions Solved

✔ Which customers placed the highest number of orders?

✔ Which customers generated the highest revenue?

✔ Which product categories generate maximum revenue?

✔ Which products were never sold?

✔ Which cities generate the highest revenue?

✔ Which states have the most customers?

✔ Which payment methods contribute the highest revenue?

✔ What is the monthly revenue trend?

✔ Which products are sold the most?

✔ Which sellers receive the highest number of orders?

Many more business questions are continuously being added.

---

# 🚀 Future Improvements

- Complete Seller Analysis
- Complete Order Analysis
- Complete Payment Analysis
- Customer Segmentation
- RFM Analysis
- Cohort Analysis
- Churn Analysis
- Sales Dashboard using Power BI
- Tableau Dashboard
- KPI Dashboard
- Stored Procedures
- SQL Views
- Index Optimization
- Query Performance Tuning

---

# 💻 Tools & Technologies

- MySQL
- SQL
- VS Code
- Git
- GitHub
- CSV Dataset

---

# 📷 Project Preview

```
Database Import
        │
        ▼
Data Cleaning
        │
        ▼
Database Relationships
        │
        ▼
Single Table Analysis
        │
        ▼
Combined Business Analysis
        │
        ▼
Advanced SQL Analysis
        │
        ▼
Dashboard (Coming Soon)
```

---

# 🎯 Skills Demonstrated

- SQL
- Relational Database Design
- Data Cleaning
- Data Analysis
- Business Intelligence
- Data Aggregation
- Joins
- Window Functions
- CTEs
- Problem Solving
- Query Optimization

---

# 📈 Project Status

🟢 Active Development

This repository is continuously updated with new SQL analyses, advanced SQL concepts, optimization techniques, and business insights.

---

# ⭐ If you found this project helpful...

Please consider giving the repository a ⭐ on GitHub.