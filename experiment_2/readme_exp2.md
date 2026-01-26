
# **DBMS Lab – Worksheet 2**  
## **Implementation of SELECT Queries with Filtering, Grouping and Sorting in PostgreSQL**

---

## 👨‍🎓 **Student Details**  
**Name:** Arnab Lala  
**UID:** 25MCI10232  
**Branch:** MCA (AI & ML)  
**Semester:** 2nd  
**Section/Group:** 1/A  
**Subject:** DBMS Lab  
**Date of Performance:** 22/01/2026  

---

## 🎯 **Aim of the Session**  
To implement and analyze SQL SELECT queries using filtering, sorting, grouping, and aggregation concepts in PostgreSQL for efficient data retrieval and analytical reporting.

---

## 💻 **Software Requirements**
- PostgreSQL (Database Server)  
- pgAdmin  
- Windows Operating System  

---

## 📌 **Objective of the Session**  
- To retrieve specific data using filtering conditions  
- To sort query results using single and multiple attributes  
- To perform aggregation using grouping techniques  
- To apply conditions on aggregated data using HAVING clause  
- To understand real-world analytical queries commonly asked in placement interviews  

---

## 🛠️ **Practical / Experiment Steps**  
- Create a sample table representing customer orders  
- Insert realistic records into the table  
- Retrieve filtered data using WHERE clause  
- Sort query results using ORDER BY  
- Group records and apply aggregate functions  
- Apply conditions on grouped data using HAVING  
- Analyze execution order of WHERE and HAVING clauses  

---

# ⚙️ **Procedure of the Practical**

## **Step 1: Database and Table Creation**

create database CompanyDB;

---customer name, product, quantity, price, and order date.

create table customer_orders(
order_id serial primary key,
customer_name varchar(20),
product varchar(20),
quantity int,
price numeric(10,2),
order_date date
);
## **Step 2: Insert Records (DML)**
insert into customer_orders(customer_name,product,quantity,price,order_date) values
('Arnab', 'Laptop', 1, 55000, '2025-01-05'),
('Deepraj', 'Mouse', 2, 800, '2025-01-06'),
('Riya', 'Mobile', 1, 22000, '2025-01-10'),
('Raima', 'Headphones', 1, 2000, '2025-01-10'),
('Karan', 'Laptop', 1, 60000, '2025-02-02'),
('Subham', 'Keyboard', 1, 1500, '2025-02-05'),
('Nehashis', 'Mobile', 2, 21000, '2025-02-15'),
('Neha', 'Charger', 3, 900, '2025-02-18');

## **Step 3: Display All Records**
select*from customer_orders;

<img width="690" height="435" alt="image" src="https://github.com/user-attachments/assets/bc001db3-673e-41aa-b046-8a01c82eaac8" />


--Filtering Data Using Conditions Show only those customer who purcahse 20000 above show customer name 
--and product and quantity and price
## **Step 4: Filtering Data Using WHERE Clause**

select order_id,customer_name,product,quantity,price
from customer_orders where price>20000;

<img width="814" height="324" alt="image" src="https://github.com/user-attachments/assets/aaf3b70f-a276-491d-95a3-a690ef0c6b36" />
## **Step 5: Sorting Query Results**

---Sorting Query Results
--ascending
select order_id,customer_name,product,quantity,price
from customer_orders where price>20000 order by price ;

<img width="703" height="277" alt="image" src="https://github.com/user-attachments/assets/97c6e57e-379c-41a9-b19f-3bda94097b49" />

### **Descending Order**

--descending
select order_id,customer_name,product,quantity,price
from customer_orders where price>20000 order by price desc;

<img width="728" height="286" alt="image" src="https://github.com/user-attachments/assets/8f10d28b-9f85-4e56-b3a2-66a250d48333" />

--Step 5: Applying Conditions on Aggregated Data
--Grouping Data for Aggregation
select product ,count(*)as total_product_sale
from customer_orders
group by product;

<img width="421" height="250" alt="image" src="https://github.com/user-attachments/assets/d930e783-6b73-4700-9ed5-ce68c9eaa5be" />
## **Step 6: Grouping Data for Aggregation**

select product,
sum(quantity*price) as total_revenue
from customer_orders
group by product
having sum(quantity*price) > 50000;

<img width="572" height="263" alt="image" src="https://github.com/user-attachments/assets/d4c03702-ef9b-4d2c-a693-4db2ec552e40" />


## **Step 7: Applying Conditions on Aggregated Data (HAVING)**

select product, sum(quantity*price) as total_revenue
from customer_orders
where order_date >= '2025-01-01'
group by product
having sum(quantity*price) > 50000;


<img width="489" height="157" alt="image" src="https://github.com/user-attachments/assets/44147db7-d09b-4519-a0c8-6b0bf51bbab9" />

📸 Screenshots of execution and output are attached in this repository.

---

## 📘 **Learning Outcomes**  
- Students understand how data can be filtered to retrieve only relevant records.  
- Students learn how sorting improves readability and usefulness of reports.  
- Students gain the ability to group data for analytical purposes.  
- Students clearly differentiate between WHERE and HAVING clauses.  
- Students develop confidence in writing analytical SQL queries.  
- Students are better prepared for SQL-based placement and interview questions.

---

## 📂 **Repository Contents**
- README.md  
- Worksheet (Word & PDF)  
- SQL Queries  
- Screenshots  

---
