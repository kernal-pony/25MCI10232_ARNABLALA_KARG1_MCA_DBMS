
# 📘 Experiment 2 – CASE Statement in PostgreSQL

## 👨‍🎓 Student Details
Name: Arnab Lala  
UID: 25MCI10232  
Branch:MCA  
Section:MAM-1(A)  
Semester:2nd  
Subject:Technical Training  
Subject Code: 25CAP-652  
Date of Performance:12 January 2026  

---

## 1️⃣ Experiment
**Title:**  
Implementation of CASE Statement in PostgreSQL for Conditional Data Aggregation

---

## 2️⃣ Objective
The objectives of this experiment are:
- To understand the use of the CASE statement in PostgreSQL  
- To perform conditional data aggregation  
- To analyze data using conditional logic within SQL queries  
- To apply aggregation functions with conditions for real-world analysis  

---

## 3️⃣ Practical / Experiment Steps  
*(In place of experiment question)*

1. Create a table named Students with required attributes.  
2. Insert sample student records into the table.  
3. Display all records from the table for verification.  
4. Execute a query without using the CASE statement for conditional filtering.  
5. Execute a query using the CASE statement for conditional aggregation.  
6. Calculate average values using CASE with aggregate functions.  
7. Analyze and compare query outputs.  

---

## 4️⃣ Procedure of the Experiment and Screenshots  

### Step 1: Database and Table Creation

CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    percentage DECIMAL(5,2)
);


### Step 2: Insert Data into Table

INSERT INTO Students VALUES
(1, 'Amit', 'Delhi', 96.5),
(2, 'Riya', 'Mumbai', 94.2),
(3, 'Rahul', 'Delhi', 97.8),
(4, 'Sneha', 'Mumbai', 98.1),
(5, 'Ankit', 'Chandigarh', 95.6),
(6, 'Pooja', 'Delhi', 93.4),
(7, 'Karan', 'Chandigarh', 96.2);


### Step 3: Display Table Data

SELECT * FROM Students;


---

### Step 4: Query Without CASE Statement

SELECT city, COUNT(*) AS student_count
FROM Students
WHERE percentage > 95
GROUP BY city;


---

### Step 5: Query Using CASE Statement

SELECT city,
SUM(CASE WHEN percentage > 95 THEN 1 ELSE 0 END) AS student_count
FROM Students
GROUP BY city;

---

### Step 6: Average Calculation Using CASE

SELECT city,
CAST(
AVG(CASE WHEN percentage > 95 THEN percentage ELSE NULL END)
AS DECIMAL(5,2)) AS student_avg
FROM Students
GROUP BY city
ORDER BY student_avg DESC;


---

## 5️⃣ Input / Output Details


### Input
| Input Type | Description |
|-----------|------------|
| Table Data | Student details including city and percentage |
| SQL Queries | SELECT queries with CASE and aggregate functions |

### Output
<img width="447" height="330" alt="image" src="https://github.com/user-attachments/assets/60a1e389-c5a6-4d5f-90e4-a0b7c1a6cca6" /><br>

<img width="418" height="178" alt="image" src="https://github.com/user-attachments/assets/2c806425-06a1-499b-9e99-fbd3c025e349" /><br>
<img width="407" height="155" alt="image" src="https://github.com/user-attachments/assets/35578377-d4b0-4131-afcd-4faf697d2240" /><br>
<img width="435" height="176" alt="image" src="https://github.com/user-attachments/assets/26b68093-c572-4e7f-85fd-bf4653775ecf" /><br>


---

## 6️⃣ Learning Outcome
After completing this experiment, I learned:
1. How to use the CASE statement in PostgreSQL for conditional logic  
2. The difference between WHERE clause filtering and CASE-based aggregation  
3. How to calculate conditional counts using CASE with SUM()  
4. How to compute averages using CASE with AVG()  
5. How CASE statements are used in real-world analytical and reporting queries  

---

## 7️⃣ Tools / Technologies Used
- **Database:** PostgreSQL  
- **GUI Tool:** pgAdmin  
- **Query Language:** SQL (DDL, DML, DCL)  

---
