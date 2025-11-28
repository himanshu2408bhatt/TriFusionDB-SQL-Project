# TriFusionDB-SQL-Project
Relational SQL project for TriFusionDB managing customers, products, services, orders, bookings, transactions, and returns. Includes schema, triggers, procedures, functions, and 22+ analytical queries for insights like top customers, best-selling products, return rates, and monthly sales reports. 
##  Overview
TriFusionDB is a relational SQL database project designed to manage **customers, products, services, orders, bookings, transactions, and returns**.  
The project demonstrates how SQL can be applied for **data storage, automation, and business intelligence**.


##  Objectives
- Design normalized tables with **primary/foreign keys** to ensure data integrity.
- Implement **views, triggers, procedures, and functions** for automation.
- Perform **data cleaning and integrity checks** (duplicate detection, stock updates).
- Generate **business insights** using analytical queries:
  - Top spending customers
  - Best-selling products
  - Most returned products
  - Monthly sales vs. returns
  - Customer segmentation & CLV
  - Service usage and booking trends

## 🗂 Database Schema
- **Customers** → Customer details  
- **Products** → Product catalog with discounts and stock  
- **Orders** → Customer purchases  
- **Services** → Service offerings  
- **Bookings** → Service bookings with status tracking  
- **Transactions** → Payment records  
- **Returns** → Product returns with reasons  


## Key Queries & Insights
This project includes 22+ analytical queries to answer business questions such as:
- Most returned products
- Top spending customers
- Low stock alerts
- Average order value
- Product return rate
- Busiest order day
- Dual-activity customers (orders + bookings)
- Monthly sales reports by category

##  Features
- **Triggers** → Auto‑reduce stock after order placement  
- **Stored Procedures** → `PlaceOrder` for streamlined order entry  
- **Functions** → `CalculateTotalCost` for dynamic cost calculation  
- **Views** → `CustomerOrderSummary`, `ProductReturnSummary`

-
