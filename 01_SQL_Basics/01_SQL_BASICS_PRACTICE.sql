
-- My SQL Practice
-- Database: Db_1
-- Table: employees_practice
-- Practiced on Google BigQuery


-- Q1: Display all employee details
SELECT *
FROM `Db_1.employees_practice`;


-- Q2: Show only employee names and salaries
SELECT Name, Salary
FROM `Db_1.employees_practice`;


-- Q3: Find employees from IT department
SELECT *
FROM `Db_1.employees_practice`
WHERE Department = 'IT';


-- Q4: Find employees earning more than 50000
SELECT *
FROM `Db_1.employees_practice`
WHERE Salary > 50000;


-- Q5: Find employees who live in Ahmedabad
SELECT *
FROM `Db_1.employees_practice`
WHERE City = 'Ahmedabad';


-- Q6: Find employees whose age is between 24 and 28
SELECT *
FROM `Db_1.employees_practice`
WHERE Age BETWEEN 24 AND 28;


-- Q7: Display unique department names
SELECT DISTINCT Department
FROM `Db_1.employees_practice`;


-- Q8: Display unique city names
SELECT DISTINCT City
FROM `Db_1.employees_practice`;


-- Q9: Find employees earning less than 40000
SELECT *
FROM `Db_1.employees_practice`
WHERE Salary < 40000;


-- Q10: Find HR employees working in Mumbai
SELECT *
FROM `Db_1.employees_practice`
WHERE City = 'Mumbai'
AND Department = 'HR';


-- Q11: Display first 5 employee records
SELECT *
FROM `Db_1.employees_practice`
LIMIT 5;


-- Q12: Display only 3 employee names
SELECT Name
FROM `Db_1.employees_practice`
LIMIT 3;


-- Q13: Find top 5 highest-paid employees
SELECT *
FROM `Db_1.employees_practice`
ORDER BY Salary DESC
LIMIT 5;


-- Q14: Find 3 employees with the lowest salaries
SELECT *
FROM `Db_1.employees_practice`
ORDER BY Salary ASC
LIMIT 3;


-- Q15: Find top 3 highest-paid employees from Mumbai
SELECT *
FROM `Db_1.employees_practice`
WHERE City = 'Mumbai'
ORDER BY Salary DESC
LIMIT 3;
