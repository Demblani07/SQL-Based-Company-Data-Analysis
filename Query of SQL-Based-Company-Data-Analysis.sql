USE companymanagement;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM projects;

# Which employees work in departments with more than 2 employees?

SELECT e.EmployeeID, e.FirstName, e.LastName, e.DepartmentID, e.Salary
FROM Employees e
WHERE e.DepartmentID IN ( SELECT DepartmentID FROM Employees 
							GROUP BY DepartmentID
							HAVING COUNT(*) > 2)
ORDER BY e.EmployeeID;


# Find the names of employees, along with their project names, who have been assigned to a project.

SELECT CONCAT(FirstName,' ', LastName) AS Name,p.ProjectName
FROM employees e 
INNER JOIN projects p 
ON e.EmployeeID=p.EmployeeID;

# List the names of departments that have employees with a salary greater than $70,000.

SELECT DepartmentName 
FROM departments 
WHERE DepartmentID IN (SELECT DepartmentID 
					   FROM employees WHERE salary>70000);

# Find the maximum salary of each department and list the department names with their maximum salary.

SELECT d.DepartmentName ,MAX(salary) AS Max_Salary 
FROM employees e 
INNER JOIN departments d ON e.DepartmentID = d.DepartmentID 
GROUP BY d.DepartmentName;

# Identify employees who earn the highest salary in their respective departments.

SELECT CONCAT(FirstName,' ',LastName) AS Employee_Name, Salary AS Hightest_Salary
FROM employees e
WHERE (DepartmentID, Salary) IN (SELECT DepartmentID, MAX(Salary)
								FROM employees GROUP BY DepartmentID);

# Which employees have the same salary as the minimum salary in their department?

SELECT CONCAT(FirstName," ",LastName) AS Employee_Name, Salary AS minimum_salary
FROM employees e
WHERE (DepartmentID, Salary) IN (SELECT DepartmentID, MIN(Salary)
						         FROM employees GROUP BY DepartmentID);
                                
# List the projects that are not assigned to any employee.

SELECT p.ProjectID, p.ProjectName 
FROM projects p LEFT JOIN employees e ON p.EmployeeID = e.EmployeeID 
WHERE e.EmployeeID is NUll;

# Find the names of employees who work on at least one project.

SELECT CONCAT(FirstName," ",LastName) AS "Emp_Name",p.ProjectName 
FROM employees e 
inner join projects p 
ON  e.EmployeeID = p.EmployeeID;

# Display the total number of projects each employee is working on. Include employees who are not working on any projects.

SELECT e.EmployeeID, CONCAT(e.FirstName," " ,e.LastName) AS emp_Name, 
COALESCE(COUNT(p.EmployeeID), 0) AS "Total_Projects" 
FROM employees e 
left join projects p 
ON  e.EmployeeID = p.EmployeeID
GROUP BY e.EmployeeID, emp_Name;

# Find the names of employees who work on more than one project.

SELECT e.FirstName, e.LastName
FROM employees e
JOIN projects p ON e.EmployeeID = p.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
HAVING COUNT( p.ProjectID) > 1;

# List the departments that have no employees.

SELECT d.DepartmentID, d.DepartmentName
FROM departments d
left JOIN employees e ON d.DepartmentID = e.DepartmentID
WHERE e.EmployeeID IS NULL;

# Find the names of employees who have a salary above the overall average salary.

SELECT CONCAT(FirstName," ",LastName) AS "Emp_Name", salary 
FROM employees 
WHERE salary>(SELECT AVG(salary) FROM employees);

# List the departments with at least one employee earning more than $80,000.

SELECT d.DepartmentID, d.DepartmentName,e.salary
FROM departments d
INNER JOIN employees e ON d.DepartmentID = e.DepartmentID
WHERE e.Salary > 80000;

# Identify employees whose salary is above the average salary of their department but below the overall average salary.

SELECT e.EmployeeID, e.FirstName, e.LastName, e.Salary, e.DepartmentID
FROM employees e
WHERE e.Salary > (SELECT AVG(e2.Salary) FROM employees e2 WHERE e2.DepartmentID = e.DepartmentID)
AND e.Salary < (SELECT AVG(Salary) FROM employees);


# Find the departments where the total salary of all employees exceeds $200,000.
  
SELECT d.DepartmentName, SUM(salary) AS "Total salary" 
FROM departments d 
INNER JOIN employees e 
ON d.DepartmentID = e.DepartmentID 
GROUP BY  DepartmentName 
HAVING SUM(salary)>200000;

# List the names of employees who work on 'Project A'.
  
 SELECT CONCAT(FirstName," ",LastName) AS Emp_Name,p.ProjectName 
 FROM employees e 
 INNER JOIN projects P ON e.EmployeeID = p.EmployeeID 
 WHERE p.ProjectName = "Project A";

# Find the employees whose salary is equal to the highest salary in their department.

SELECT EmployeeID, CONCAT(FirstName, ' ', LastName) AS Emp_Name, DepartmentID, Salary
FROM (
    SELECT EmployeeID, FirstName, LastName, DepartmentID, Salary,
           RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS salary_rank
    FROM employees
) AS ranked_employees
WHERE salary_rank = 1;

# List the names of employees who do not work in the 'IT' department but have a salary greater than $75,000.
  
SELECT CONCAT(FirstName," " ,LastName) AS Emp_Name ,d.DepartmentName
FROM employees e 
INNER JOIN departments d 
ON e.DepartmentID = d.DepartmentID 
WHERE e.Salary>75000 AND d.DepartmentName !="IT" ;

# Find the names of employees who earn more than the highest salary in the 'HR' department.

SELECT CONCAT(e.FirstName, ' ', e.LastName) AS Emp_Name, e.Salary
FROM employees e
INNER JOIN departments d ON e.DepartmentID = d.DepartmentID
WHERE e.Salary > (
    SELECT MAX(e2.Salary)
    FROM employees e2
    INNER JOIN departments d2 ON e2.DepartmentID = d2.DepartmentID
    WHERE d2.DepartmentName = 'HR');
  
# Find the employees who earn more than the average salary in their department.
	
SELECT EmployeeID, CONCAT(FirstName," " ,LastName) AS Emp_Name,Salary 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

