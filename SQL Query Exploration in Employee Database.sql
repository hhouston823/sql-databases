-- Create the Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Create the Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Populate the Departments table
INSERT INTO Departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Sales'),
(4, 'Marketing');

-- Populate the Employees table
INSERT INTO Employees (employee_id, name, age, department_id) VALUES
(1, 'Alice', 28, 2),
(2, 'Bob', 25, 3),
(3, 'Charlie', 32, 2),
(4, 'David', 29, 4),
(5, 'Eve', 35, 1),
(6, 'Frank', 27, 3),
(7, 'Grace', 30, 2);

-- Task 1: SQL DISTINCT Usage
SELECT DISTINCT d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

-- Task 2: SQL COUNT Functionality
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Task 3: SQL BETWEEN Usage
SELECT e.name, e.age, e.department_id
FROM Employees e
WHERE e.age BETWEEN 25 AND 30;