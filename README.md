# 🛍️ Retail Sales Performance Dashboard

## 📌 Project Overview

The **Retail Sales Performance Dashboard** is a Business Intelligence project developed using **SQL** and **Power BI** to analyze retail transaction data and generate actionable business insights.

The project focuses on understanding:

- Sales performance across regions
- Customer purchasing behavior
- Best-selling products
- Monthly revenue trends
- Online vs Offline sales performance
- Payment method contribution

This dashboard helps businesses make data-driven decisions through interactive visualizations and KPI monitoring.

---

# 🎯 Project Objectives

- Analyze retail transaction data using SQL
- Build an interactive Power BI dashboard
- Identify high-performing regions and products
- Monitor monthly sales growth
- Compare Online vs Offline sales channels
- Generate strategic business insights

---

# 🛠️ Tools & Technologies Used

| Tool / Technology | Purpose |
|---|---|
| MySQL | Data Storage & SQL Queries |
| Power BI | Data Visualization & Dashboard |
| CSV / Excel | Dataset Handling |
| SQL | Data Analysis |
| DAX | KPI Calculations |

---

# 📂 Dataset Information

## Dataset Name

```text
RetailTransactions_Realistic.csv
```

## Total Records

```text
300 Retail Transactions
```

## Dataset Features

- Multi-region sales data
- Online & Offline transactions
- Realistic product pricing
- Repeated Customer IDs
- Multiple payment methods
- Monthly retail sales records

---

# 🗂️ Dataset Schema

| Column Name | Description |
|---|---|
| TransactionID | Unique ID for each transaction |
| Date | Transaction date |
| ProductName | Name of the product sold |
| Category | Product category |
| Region | Sales region |
| SalesChannel | Online / Offline sales |
| Quantity | Units sold |
| UnitPrice | Price per unit |
| TotalAmount | Total sales amount |
| PaymentMode | Payment method used |
| CustomerID | Unique customer ID |

---

# 🗄️ Database Setup

## Create Database

```sql
CREATE DATABASE RetailAnalysis;
USE RetailAnalysis;
```

---

## Create Table

```sql
CREATE TABLE RetailTransactions (
    TransactionID INT PRIMARY KEY,
    Date DATE,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Region VARCHAR(20),
    SalesChannel VARCHAR(20),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    TotalAmount DECIMAL(10,2),
    PaymentMode VARCHAR(30),
    CustomerID INT
);
```

---

# 📥 Import CSV File into MySQL

1. Open MySQL Workbench
2. Select Database
3. Right Click on Tables
4. Choose **Table Data Import Wizard**
5. Select CSV file
6. Import into existing table

---

# 📊 SQL Analysis Performed

## 1️⃣ Region-wise Sales Analysis

Analyzed total revenue generated across all regions.

```sql
SELECT Region,
SUM(TotalAmount) AS TotalSales
FROM RetailTransactions
GROUP BY Region;
```

---

## 2️⃣ Top 5 Best-Selling Products

Identified products generating maximum revenue.

```sql
SELECT ProductName,
SUM(TotalAmount) AS Revenue
FROM RetailTransactions
GROUP BY ProductName
ORDER BY Revenue DESC
LIMIT 5;
```

---

## 3️⃣ Monthly Sales Trend Analysis

Tracked monthly sales growth patterns.

```sql
SELECT MONTHNAME(Date) AS MonthName,
SUM(TotalAmount) AS MonthlySales
FROM RetailTransactions
GROUP BY MonthName;
```

---

## 4️⃣ Online vs Offline Sales Comparison

Compared sales performance by sales channel.

```sql
SELECT SalesChannel,
SUM(TotalAmount) AS Sales
FROM RetailTransactions
GROUP BY SalesChannel;
```

---

## 5️⃣ Category-wise Revenue Analysis

Compared revenue contribution by category.

```sql
SELECT Category,
SUM(TotalAmount) AS Revenue
FROM RetailTransactions
GROUP BY Category;
```

---

# 📈 Power BI Dashboard Features

## ✅ KPI Cards

- Total Sales
- Total Transactions
- Unique Customers
- Average Order Value

---

## 📊 Dashboard Visualizations

| Visualization | Purpose |
|---|---|
| Bar Chart | Region-wise Sales Performance |
| Line Chart | Monthly Sales Trend |
| Pie Chart | Sales Channel Distribution |
| Column Chart | Top 5 Products |
| Donut Chart | Payment Method Analysis |
| Bar Chart | Category-wise Revenue Analysis |
| Funnel Chart | Sales Funnel Analysis |

---

# 🎛️ Dashboard Filters

Interactive slicers added for:

- Region
- Category
- Sales Channel

---

# 📌 Key Business Insights

- West region generated the highest sales revenue.
- Electronics category contributed maximum revenue.
- Online sales outperformed Offline sales.
- Laptop and Camera were top-selling products.
- Monthly sales showed consistent growth.
- UPI and Net Banking were the most used payment methods.

---

# 📷 Dashboard Preview

## Dashboard Title

```text
Retail Sales Performance Dashboard
```

---

# 📁 Project Structure

```text
Retail Sales Performance Dashboard
│
├── RetailTransactions_Realistic.csv
├── RetailAnalysis.sql
├── Dashboard.pbix
├── Insights.txt
└── README.md
```

---

# 🎓 Learning Outcomes

This project helped in learning:

- SQL Query Writing
- Data Cleaning & Transformation
- Business Intelligence Concepts
- Power BI Dashboard Development
- KPI Analysis
- Data Visualization Techniques
- Retail Sales Analytics

---

# 🚀 Future Improvements

- Add Profit Margin Analysis
- Add Customer Segmentation
- Add Predictive Sales Forecasting
- Integrate Real-Time Data
- Create Mobile Responsive Dashboard

---

# ✅ Conclusion

The **Retail Sales Performance Dashboard** successfully transforms raw retail transaction data into meaningful business insights using SQL and Power BI.

This project demonstrates practical skills in:

- Data Analysis
- Dashboard Design
- SQL Querying
- Business Intelligence Reporting

The dashboard enables organizations to monitor performance, identify trends, and support strategic business decisions effectively.

---

# 👨‍💻 Developed By

```text
Nitesh Kumar
```
