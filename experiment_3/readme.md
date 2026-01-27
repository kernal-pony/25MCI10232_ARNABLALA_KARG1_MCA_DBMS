
# **DBMS Lab – Worksheet 3**  
## **Implementation of Conditional Logic Using CASE and IF–ELSE in PostgreSQL**

---

## 👨‍🎓 **Student Details**  
**Name:** Arnab Lala  
**UID:** 25MCI10232  
**Branch:** MCA  
**Semester:** 2nd  
**Section:** MAM-1(A)  
**Subject:** Technical Training  
**Subject Code:** 25CAP-652_25MAM_KAR-1_A  
**Date of Performance:** 27/01/2026  

---

## 🎯 **Aim of the Session**  
To implement conditional decision-making logic in PostgreSQL using IF–ELSE constructs and CASE expressions for classification, validation, and rule-based data processing.

---

## 💻 **Software Requirements**
- PostgreSQL (Database Server)  
- pgAdmin  
- Windows Operating System  

---

## 📌 **Objective of the Session**  
- To understand conditional execution in SQL  
- To implement decision-making logic using CASE expressions  
- To simulate real-world rule validation scenarios  
- To classify data based on multiple conditions  
- To strengthen SQL logic skills required in interviews and backend systems  

---

## 📖 **Theory**
In real-world database systems, data often needs to be validated, categorized, or transformed based on business rules. Conditional logic allows the database to make decisions dynamically instead of relying solely on application-layer logic.

PostgreSQL supports conditional logic mainly through:
- CASE Expressions (used inside SELECT, UPDATE, INSERT)  
- IF–ELSE constructs (used inside PL/pgSQL blocks such as functions and procedures)  

### CASE Expression
- Evaluates conditions sequentially  
- Returns a value based on the first true condition  
- Can be used in SELECT, UPDATE, ORDER BY, and WHERE clauses  

### Types of CASE
- Simple CASE → compares expressions  
- Searched CASE → evaluates boolean conditions  

Conditional logic is heavily used in:
- Data classification (grades, salary slabs)  
- Violation detection  
- Status mapping  
- Business rule enforcement  

---

## 🛠️ **Practical / Experiment Steps**  
- Create a table for schema analysis  
- Insert multiple records  
- Classify schemas using CASE expressions  
- Update records using CASE logic  
- Implement IF–ELSE logic using PL/pgSQL  
- Perform real-world classification scenarios  

---

# ⚙️ **Procedure of the Practical**

## **Step 1: Table Creation**

CREATE TABLE SCHEMA_ANALYSIS(
    report_id INT PRIMARY KEY,
    entity_name VARCHAR(50) NOT NULL,
    violation_count INT NOT NULL
);


---

## **Step 2: Insert Records**

INSERT INTO SCHEMA_ANALYSIS VALUES
(1, 'User_Schema', 0),
(2, 'Order_Schema', 2),
(3, 'Payment_Schema', 4),
(4, 'Inventory_Schema', 2),
(5, 'Audit_Schema', 15);


---

## **Step 3: Display Records**

SELECT * FROM SCHEMA_ANALYSIS;
<br>
<img width="476" height="237" alt="image" src="https://github.com/user-attachments/assets/1024ff8e-1f7e-4123-8466-6a624266f664" />

---

## **Step 4: Classifying Data Using CASE Expression**

SELECT *,
CASE 
    WHEN violation_count = 0 THEN 'NO VIOLATION'
    WHEN violation_count BETWEEN 1 AND 2 THEN 'MINOR VIOLATION'
    ELSE 'CRITICAL VIOLATION'
END AS VIOLATION_CATEGORY
FROM SCHEMA_ANALYSIS;
<br>
<img width="738" height="277" alt="image" src="https://github.com/user-attachments/assets/f06a959e-c94d-4413-bcc6-77f5146216e8" />


---

## **Step 5: Applying CASE Logic in Data Updates**

ALTER TABLE SCHEMA_ANALYSIS
ADD COLUMN approval_status VARCHAR(20);
<br>
<img width="696" height="253" alt="image" src="https://github.com/user-attachments/assets/bbffddc3-d987-4563-9000-6af49bdb4da9" />


UPDATE SCHEMA_ANALYSIS
SET approval_status =
CASE
    WHEN violation_count = 0 THEN 'Approved'
    WHEN violation_count BETWEEN 1 AND 2 THEN 'Review'
    ELSE 'Rejected'
END;
<br>
<img width="728" height="266" alt="image" src="https://github.com/user-attachments/assets/9f46b6e8-fbe6-47ee-a42f-b26f2515fff4" />


---

## **Step 6: Implementing IF–ELSE Logic Using PL/pgSQL**

DO $$
DECLARE
    v_violation_count INT := 0;
BEGIN
    IF v_violation_count = 0 THEN
        RAISE NOTICE 'Status: Approved (No Violations)';
    ELSIF v_violation_count BETWEEN 1 AND 2 THEN
        RAISE NOTICE 'Status: Review (Minor Violations)';
    ELSE
        RAISE NOTICE 'Status: Rejected (Critical Violations)';
    END IF;
END $$;
<br>

<img width="589" height="222" alt="image" src="https://github.com/user-attachments/assets/f894b478-0cdc-4d53-8e82-58ac9fb05e5f" />
<br>

<img width="715" height="262" alt="image" src="https://github.com/user-attachments/assets/a6dbd474-c195-4bce-8bfc-52a04ab19f77" />



---

## 📥📤 **I/O Analysis (Input / Output)**

### **Input**
- Schema entity names  
- Violation counts  
- Conditional SQL queries  

### **Output**
- Classified schema categories  
- Approval status updates  
- Conditional system messages  

📸 Screenshots of execution and output are attached in this repository.
<br>
<img width="476" height="237" alt="image" src="https://github.com/user-attachments/assets/1024ff8e-1f7e-4123-8466-6a624266f664" />
<br>
<img width="738" height="277" alt="image" src="https://github.com/user-attachments/assets/f06a959e-c94d-4413-bcc6-77f5146216e8" />

<br>
<img width="696" height="253" alt="image" src="https://github.com/user-attachments/assets/bbffddc3-d987-4563-9000-6af49bdb4da9" />

<br>
<img width="728" height="266" alt="image" src="https://github.com/user-attachments/assets/9f46b6e8-fbe6-47ee-a42f-b26f2515fff4" />
<br>

<img width="589" height="222" alt="image" src="https://github.com/user-attachments/assets/f894b478-0cdc-4d53-8e82-58ac9fb05e5f" />
<br>

<img width="715" height="262" alt="image" src="https://github.com/user-attachments/assets/a6dbd474-c195-4bce-8bfc-52a04ab19f77" />



---

## 📘 **Learning Outcomes**  
- Understanding conditional logic in PostgreSQL  
- Implementing CASE expressions for classification  
- Applying decision rules in UPDATE operations  
- Using IF–ELSE logic in PL/pgSQL blocks  
- Developing strong backend SQL logic skills  

---

## 📂 **Repository Contents**
- README.md  
- Worksheet (Word & PDF)  
- SQL Queries  
- Screenshots  

---
