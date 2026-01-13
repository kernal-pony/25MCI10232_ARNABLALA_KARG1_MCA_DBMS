CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30) UNIQUE NOT NULL
);
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30) NOT NULL,
    emp_email VARCHAR(40) UNIQUE NOT NULL,
    emp_phone VARCHAR(15) UNIQUE NOT NULL,
    emp_address VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);
CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(30) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    assigned_emp INT,
    FOREIGN KEY (assigned_emp) REFERENCES Employee(emp_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);
INSERT INTO Department VALUES
(10, 'Research'),
(20, 'Development'),
(30, 'Sales'),
(40, 'Operations');

INSERT INTO Employee VALUES
(201, 'Arjun Das', 'arjun@gmail.com', '9001112222', 'Kolkata', 20),
(202, 'Meera Roy', 'meera@gmail.com', '9003334444', 'Delhi', 20),
(203, 'Sahil Khan', 'sahil@gmail.com', '9005556666', 'Mumbai', 30),
(204, 'Nina Paul', 'nina@gmail.com', '9007778888', 'Chennai', 10),
(205, 'Vikram Jain', 'vikram@gmail.com', '9009990000', 'Pune', 40);


INSERT INTO Project VALUES
(1, 'Inventory System', '2026-01-05', '2026-06-30', 201),
(2, 'CRM Software', '2026-02-10', '2026-07-15', 202),
(3, 'Sales Dashboard', '2026-03-01', '2026-05-31', 203),
(4, 'Research Portal', '2026-01-20', '2026-04-25', 204),
(5, 'Ops Automation', '2026-02-01', '2026-08-01', 205);

UPDATE Employee
SET dept_id = 40
WHERE emp_id = 203;

SELECT * FROM Department;
SELECT * FROM Employee;
SELECT * FROM Project;


DELETE FROM Employee WHERE emp_id = 205;


CREATE ROLE HR LOGIN PASSWORD 'HR';


GRANT SELECT, INSERT, UPDATE ON Employee TO HR;
GRANT SELECT ON Department TO HR;
GRANT SELECT, INSERT, UPDATE ON Project TO HR;

REVOKE INSERT ON Employee FROM HR;
REVOKE UPDATE ON Department FROM HR;

