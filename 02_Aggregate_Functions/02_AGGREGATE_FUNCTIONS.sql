
-- SQL Learning Journey
-- Topic: Aggregate Functions, GROUP BY and HAVING
-- Database: Db_1
-- Table: employees_practice
-- Platform: Google BigQuery


-- Q16: Count total employees

SELECT COUNT(EmpID) AS Total_Employees
FROM `Db_1.employees_practice`;


-- Q17: Find total salary of all employees

SELECT SUM(Salary) AS Total_Salary
FROM `Db_1.employees_practice`;


-- Q18: Find average salary

SELECT ROUND(AVG(Salary), 2) AS Average_Salary
FROM `Db_1.employees_practice`;


-- Q19: Find highest and lowest salary

SELECT
    MAX(Salary) AS Highest_Salary,
    MIN(Salary) AS Lowest_Salary
FROM `Db_1.employees_practice`;


-- Q20: Count unique departments

SELECT COUNT(DISTINCT Department) AS Total_Departments
FROM `Db_1.employees_practice`;


-- Q21: Count employees in each department

SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM `Db_1.employees_practice`
GROUP BY Department;


-- Q22: Find total salary department-wise

SELECT
    Department,
    SUM(Salary) AS Total_Salary
FROM `Db_1.employees_practice`
GROUP BY Department;


-- Q23: Find average salary department-wise

SELECT
    Department,
    ROUND(AVG(Salary), 2) AS Average_Salary
FROM `Db_1.employees_practice`
GROUP BY Department;


-- Q24: Find highest and lowest salary in each department

SELECT
    Department,
    MAX(Salary) AS Highest_Salary,
    MIN(Salary) AS Lowest_Salary
FROM `Db_1.employees_practice`
GROUP BY Department;


-- Q25: Department-wise employee and salary details

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    ROUND(AVG(Salary), 2) AS Average_Salary
FROM `Db_1.employees_practice`
GROUP BY Department;


-- Q26: Show departments having more than 4 employees

SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM `Db_1.employees_practice`
GROUP BY Department
HAVING COUNT(*) > 4;


-- Q27: Show departments with average salary above 50000

SELECT
    Department,
    ROUND(AVG(Salary), 2) AS Average_Salary
FROM `Db_1.employees_practice`
GROUP BY Department
HAVING AVG(Salary) > 50000;


-- Q28: Show departments with total salary above 200000

SELECT
    Department,
    SUM(Salary) AS Total_Salary
FROM `Db_1.employees_practice`
GROUP BY Department
HAVING SUM(Salary) > 200000
ORDER BY Total_Salary DESC;


-- Q29: Departments with more than 3 employees and average salary above 40000

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    ROUND(AVG(Salary), 2) AS Average_Salary
FROM `Db_1.employees_practice`
GROUP BY Department
HAVING COUNT(*) > 3
AND AVG(Salary) > 40000;


-- Q30: Department-wise salary report with conditions

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    ROUND(AVG(Salary), 2) AS Average_Salary,
    MAX(Salary) AS Highest_Salary
FROM `Db_1.employees_practice`
GROUP BY Department
HAVING COUNT(*) > 3
AND SUM(Salary) > 200000
ORDER BY Total_Salary DESC;


-- Q31: Department-wise report for employees earning above 30000

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    ROUND(AVG(Salary), 2) AS Average_Salary
FROM `Db_1.employees_practice`
WHERE Salary > 30000
GROUP BY Department
HAVING COUNT(*) > 2
ORDER BY Average_Salary DESC;


-- Q32: Count employees in each salary category department-wise

SELECT
    Department,
    SUM(CASE WHEN Salary >= 60000 THEN 1 ELSE 0 END) AS High_Salary,
    SUM(CASE WHEN Salary >= 40000 AND Salary < 60000 THEN 1 ELSE 0 END) AS Medium_Salary,
    SUM(CASE WHEN Salary < 40000 THEN 1 ELSE 0 END) AS Low_Salary,
    COUNT(*) AS Total_Employees
FROM `Db_1.employees_practice`
GROUP BY Department
HAVING COUNT(*) > 3
ORDER BY Total_Employees DESC;


-- Q33: Create a salary category for each employee

SELECT
    Name,
    Department,
    Salary,
    CASE
        WHEN Salary >= 60000 THEN 'High'
        WHEN Salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS Salary_Category
FROM `Db_1.employees_practice`;


-- Q34: Count high salary employees in each department

SELECT
    Department,
    SUM(CASE WHEN Salary >= 60000 THEN 1 ELSE 0 END) AS High_Salary_Employees
FROM `Db_1.employees_practice`
GROUP BY Department;


-- Q35: Count medium salary employees in each department

SELECT
    Department,
    SUM(CASE WHEN Salary >= 40000 AND Salary < 60000 THEN 1 ELSE 0 END) AS Medium_Salary_Employees
FROM `Db_1.employees_practice`
GROUP BY Department;


-- Q36: Count low salary employees in each department

SELECT
    Department,
    SUM(CASE WHEN Salary < 40000 THEN 1 ELSE 0 END) AS Low_Salary_Employees
FROM `Db_1.employees_practice`
GROUP BY Department;


-- Q37: Create a department-wise salary category report

SELECT
    Department,
    SUM(CASE WHEN Salary >= 60000 THEN 1 ELSE 0 END) AS High_Salary,
    SUM(CASE WHEN Salary >= 40000 AND Salary < 60000 THEN 1 ELSE 0 END) AS Medium_Salary,
    SUM(CASE WHEN Salary < 40000 THEN 1 ELSE 0 END) AS Low_Salary,
    COUNT(*) AS Total_Employees
FROM `Db_1.employees_practice`
GROUP BY Department;


-- Q38: Complete salary analysis department-wise

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    ROUND(AVG(Salary), 2) AS Average_Salary,
    MAX(Salary) AS Highest_Salary,
    MIN(Salary) AS Lowest_Salary
FROM `Db_1.employees_practice`
GROUP BY Department
ORDER BY Total_Salary DESC;


-- Q39: Departments with more than 3 employees and average salary above 40000

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    ROUND(AVG(Salary), 2) AS Average_Salary
FROM `Db_1.employees_practice`
GROUP BY Department
HAVING COUNT(*) > 3
AND AVG(Salary) > 40000
ORDER BY Average_Salary DESC;


-- Q40: Show departments with average salary above 50000

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    ROUND(AVG(Salary), 2) AS Average_Salary,
    MAX(Salary) AS Highest_Salary
FROM `Db_1.employees_practice`
GROUP BY Department
HAVING AVG(Salary) > 50000
ORDER BY Average_Salary DESC;


-- Q41: Find employee count and average salary city-wise

SELECT
    City,
    COUNT(*) AS Total_Employees,
    ROUND(AVG(Salary), 2) AS Average_Salary
FROM `Db_1.employees_practice`
GROUP BY City
HAVING COUNT(*) > 3
ORDER BY Total_Employees DESC;


-- Q42: Find employee and salary details by department and city

SELECT
    Department,
    City,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary
FROM `Db_1.employees_practice`
GROUP BY Department, City
ORDER BY Department, Total_Salary DESC;


-- Q43: Create salary categories based on department average salary

SELECT
    Department,
    ROUND(AVG(Salary), 2) AS Average_Salary,
    CASE
        WHEN AVG(Salary) >= 55000 THEN 'High'
        WHEN AVG(Salary) >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS Salary_Category
FROM `Db_1.employees_practice`
GROUP BY Department;


-- Q44: Final department-wise salary report

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Salary >= 60000 THEN 1 ELSE 0 END) AS High_Salary_Employees,
    SUM(CASE WHEN Salary < 40000 THEN 1 ELSE 0 END) AS Low_Salary_Employees,
    ROUND(AVG(Salary), 2) AS Average_Salary
FROM `Db_1.employees_practice`
GROUP BY Department
ORDER BY Total_Employees DESC;
