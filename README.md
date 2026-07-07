# 🛒 SQL E-Commerce Data Analysis Project

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?style=for-the-badge)
![Database](https://img.shields.io/badge/Database-Relational-success?style=for-the-badge)
![Project Status](https://img.shields.io/badge/Status-Active%20Development-orange?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

---

# 📖 Introduction

This project is an end-to-end **SQL E-Commerce Data Analysis Project** built using the **Olist Brazilian E-Commerce Dataset**.

The objective of this project is to transform raw e-commerce data into meaningful business insights using SQL. The project starts with importing multiple CSV datasets into MySQL, designing a relational database, creating relationships between tables, preparing the data, and performing detailed business analysis.

The analysis covers customer behavior, order trends, product performance, seller performance, payment analysis, and revenue insights.

This project demonstrates practical SQL skills used in real-world Data Analytics and Business Intelligence roles, including:

- Database Design
- Data Preparation
- Relational Database Management
- SQL Query Development
- Business Analysis
- Advanced SQL Techniques

The project is continuously updated with new analyses, advanced SQL concepts, and future dashboard development.

---

# 🎯 Project Objectives

The main objectives of this project are:

- Build a relational database from raw CSV files.
- Import and organize multiple e-commerce datasets.
- Establish Primary Key and Foreign Key relationships.
- Prepare data for analysis.
- Perform exploratory data analysis using SQL.
- Analyze customer purchasing behavior.
- Analyze sales and revenue performance.
- Identify top-performing products and sellers.
- Answer real-world business questions using SQL.
- Apply advanced SQL concepts for analytical solutions.

---

# ✨ Project Highlights

- 📂 Worked with **7 real-world CSV datasets**
- 🗄 Created a relational MySQL database
- 🔗 Established table relationships using Primary Keys and Foreign Keys
- 🧹 Performed data preparation and validation
- 📊 Created 100+ SQL analysis queries
- 👥 Customer behavior analysis
- 💰 Revenue and sales analysis
- 📦 Product performance analysis
- 🏪 Seller performance analysis
- 📈 Advanced SQL analytics using CTEs and Window Functions

---

# 📂 Project Structure

```text
SQL-E-COMMERCE-DATA-ANALYSIS
│
├── Database/
│   ├── Olist_Database_Setup.sql
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
│   └── Single_Table_Queries.sql
│
├── Combined_Analysis/
│   └── Combined_Analysis.sql
│
├── .gitignore
└── README.md
```

---

# 📊 Dataset Information

## Dataset Name

**Olist Brazilian E-Commerce Public Dataset**

The dataset contains information about Brazilian e-commerce transactions.

## Tables Included

- Customers
- Orders
- Order Items
- Products
- Sellers
- Payments
- Reviews
- Geolocation
- Product Category Translation

---

# 🗄 Database Design

The project uses a relational database structure.

## Main Tables

### Customers Table

Contains customer information such as:

- Customer ID
- Customer Unique ID
- City
- State

---

### Orders Table

Contains order information:

- Order ID
- Customer ID
- Order Status
- Purchase Date
- Delivery Dates

---

### Order Items Table

Contains product-level order information:

- Order ID
- Product ID
- Seller ID
- Price
- Freight Value

---

### Products Table

Contains product information:

- Product ID
- Product Category
- Product Weight
- Product Dimensions

---

### Sellers Table

Contains seller information:

- Seller ID
- Seller City
- Seller State

---

### Payments Table

Contains payment details:

- Order ID
- Payment Type
- Payment Value
- Installments

---

### Reviews Table

Contains customer feedback:

- Review Score
- Review Comments
- Review Dates

---

# 🔄 Project Workflow

```
Raw CSV Datasets
        │
        ▼
Database Creation
        │
        ▼
Data Preparation
        │
        ▼
Primary & Foreign Key Relationships
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
Dashboard Development (Future)
```

---

# 🧹 Data Preparation

Before analysis, the datasets were prepared by:

- Importing CSV files into MySQL.
- Creating database tables.
- Defining primary keys.
- Creating foreign key relationships.
- Checking data consistency.
- Handling missing values.
- Formatting date columns.
- Preparing structured data for analysis.

---

# 📈 SQL Analysis

## 1. Single Table Analysis

Individual table analysis was performed to understand the dataset structure and basic metrics.

Examples:

### Customer Analysis

- Total number of customers.
- Unique customers.
- Top customer cities.
- Top customer states.
- Customer distribution by location.

### Orders Analysis

- Total orders.
- Orders by state.
- Orders by year.
- Orders by month.
- Order status analysis.

### Product Analysis

- Total products.
- Product categories.
- Top product categories.
- Highest weight products.
- Longest products.

### Seller Analysis

- Total sellers.
- Seller distribution by city.
- Seller distribution by state.

### Payment Analysis

- Total payment records.
- Total payment value.
- Average payment value.
- Payment type analysis.

### Review Analysis

- Total reviews.
- Average review score.
- Review score distribution.
- Reviews without comments.

---

# 2. Combined Business Analysis

Multi-table analysis was performed using joins and advanced SQL techniques.

## Customer Analysis

Business questions answered:

- Top customers by number of orders.
- Highest spending customers.
- Customers purchasing the highest number of products.
- One-time customers.
- Average orders per customer.

---

## Revenue Analysis

Business questions answered:

- Revenue generated by year.
- Monthly revenue trends.
- Highest revenue product categories.
- Highest revenue states.
- Highest revenue cities.
- Average revenue per order.
- Average revenue per customer.
- Running revenue analysis.

---

## Product Analysis

Business questions answered:

- Most sold products.
- Least sold products.
- Products never sold.
- Highest revenue products.
- Top product categories.
- Monthly top-selling products.

---

## Seller Analysis *(In Progress)*

Planned analysis:

- Top sellers by orders.
- Top sellers by revenue.
- Sellers with no sales.
- Average orders per seller.
- Monthly best-performing sellers.

---

# 🧠 SQL Concepts Used

## Basic SQL

- SELECT
- WHERE
- DISTINCT
- ORDER BY
- LIMIT

## Intermediate SQL

- GROUP BY
- HAVING
- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- Multiple Table Joins

## Advanced SQL

- Common Table Expressions (CTEs)
- Subqueries
- Correlated Subqueries
- CASE Statements
- Window Functions

Window Functions Used:

- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- LAG()
- LEAD()

---

# 📌 Business Questions Solved

Examples:

✔ Which customers generate the highest revenue?

✔ Which products are sold the most?

✔ Which products generate the highest profit?

✔ Which categories perform best?

✔ Which cities generate maximum revenue?

✔ Which states have the highest customer base?

✔ Which payment methods contribute the most revenue?

✔ What are monthly revenue trends?

✔ Which sellers perform the best?

---

# 🛠 Technologies Used

- SQL
- MySQL
- MySQL Workbench
- VS Code
- Git
- GitHub

---

# 📊 Project Statistics

- 9 CSV datasets
- Multiple relational tables
- 100+ SQL queries
- Beginner to Advanced SQL concepts
- Continuous development

---

# 🚀 Future Roadmap

## Planned Improvements

- Complete Seller Analysis
- Complete Order Analysis
- Complete Payment Analysis
- Customer Segmentation
- RFM Analysis
- Cohort Analysis
- SQL Views
- Stored Procedures
- Query Optimization
- Power BI Dashboard
- Tableau Dashboard

---

# 📌 Project Status

🟢 **Active Development**

This project is continuously updated with new SQL analyses, advanced business insights, and data visualization components.

---

# 📄 License

This project is licensed under the MIT License.

---

# 👨‍💻 Author

## Vikash Giri

Data Analyst | SQL Enthusiast

For collaboration, suggestions, or feedback, feel free to connect through GitHub.

⭐ If you find this project useful, consider giving it a star.