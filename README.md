# 📊 Northwind Database SQL Analysis

## 📌 Project Overview
For this project, I worked with the **Northwind database**, a classic dataset used for training SQL skills, but focusing on MySQL queries. This database contains sales data from a fictional company, including **customers, orders, products, employees, and suppliers**. It provides a great opportunity for data analysts to practice MySQL queries and database management.

## 🛠️ Skills & Techniques Used
- **Data retrieval** using `SELECT` statements
- **Filtering data** with `WHERE`, `BETWEEN`, and `ORDER BY`
- **Aggregating data** using `GROUP BY` and `HAVING`
- **Joining tables** to analyze relationships within the dataset
- **Sorting and ordering** results for better insights

## 🔍 Queries & Analysis
Below are some of the SQL queries I executed and their insights:

### 1️⃣ Selecting Products in a Price Range
```sql
SELECT * FROM northwind.products
WHERE price BETWEEN 50 AND 100;
```
**Insight:** This query retrieves all products priced between $50 and $100, helping in price analysis for mid-range products.

<img width="451" alt="Screenshot 2025-02-18 at 15 01 52" src="https://github.com/user-attachments/assets/7e6d53d8-592a-4347-b27f-2dcb6aae9f58" />

### 2️⃣ Retrieving Orders Between Specific Dates
```sql
SELECT * FROM Orders
WHERE OrderDate BETWEEN "1996-01-01" AND "1996-12-31"
ORDER BY OrderDate;
```
**Insight:** Extracts all orders placed in 1996, useful for time-based sales analysis.

<img width="323" alt="Screenshot 2025-02-18 at 15 04 28" src="https://github.com/user-attachments/assets/71b011b1-ea4d-494c-83e3-9ebcc187c1ee" />

### 3️⃣ Filtering Order Details by Quantity
```sql
SELECT * FROM order_details
WHERE Quantity BETWEEN 5 AND 15
ORDER BY Quantity;
```
**Insight:** Helps identify moderate-quantity purchases, which might be the most common order sizes.

<img width="245" alt="Screenshot 2025-02-18 at 15 06 18" src="https://github.com/user-attachments/assets/bb3eb70a-0525-4906-9c4e-23f6c0dfb0e0" />

### 4️⃣ Selecting Customer Details
```sql
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;
```
**Insight:** Provides a simplified customer list for quick reference.

<img width="234" alt="Screenshot 2025-02-18 at 15 07 07" src="https://github.com/user-attachments/assets/07e6a818-0213-47d8-975d-141267d35001" />

## 📊 Visualizing Results
Below are images showing also the use of joint queries and results for better understanding:

```sql
select Orders.OrderID, Shippers.ShipperID, Shippers.ShipperName
from Orders
inner join Shippers
on Orders.ShipperID = Shippers.ShipperID;
```
**Insight:** Find out shippers for different orders.

<img width="213" alt="Screenshot 2025-02-18 at 15 15 52" src="https://github.com/user-attachments/assets/9651b3f2-6905-44db-8bdf-e31d9f9f2157" />

```sql
select Products.ProductName, Suppliers.SupplierName
from Suppliers
inner join Products
on Products.SupplierId = Suppliers.SupplierID;
```

**Insight:** Selects all products with thier suppliers.

<img width="334" alt="Screenshot 2025-02-18 at 15 13 34" src="https://github.com/user-attachments/assets/177e02f3-4403-4bea-bf26-ab1c6f5d8e2b" />

## 🚀 How to Use This Project
1. Download and install MySQL.
2. Import the Northwind database into MySQL.
3. Run the SQL queries in a query editor.
4. Modify and experiment with the queries to explore the data further.

## 📫 Let's Connect!
If you find this project interesting or have any suggestions, feel free to reach out or explore my other SQL projects! 🚀
