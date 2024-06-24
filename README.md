# Case Study: SQL-Based Company Data Analysis

## Project Overview:

This project provides a comprehensive analysis of company data using SQL. It includes various queries to extract meaningful insights from datasets related to employees, departments, and projects.

## Dataset and Schema
### Dataset

The dataset includes the following tables:
- **Employees**: Contains details about employees (id, name, department_id, salary).
- **Departments**: Contains department information (id, name).
- **Projects**: Contains project details (id, name).
- **EmployeeProjects**: Links employees to projects (employee_id, project_id).

### Schema
![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/76ab0ae8-7cea-4911-a2e5-dda3a532e8fd)

## Instructions
### Setup
1. Clone the repository.
    ```bash
    git clone https://github.com/Demblani07/SQL-Based-Company-Data-Analysis.git
    ```
2. Import the sample data into your SQL database.
3. Run the SQL scripts in the specified order.

### Prerequisites
- SQL database (e.g., MySQL, PostgreSQL)
- SQL client (e.g., MySQL Workbench)

## SQL Queries and Results

### 1. Which employees work in departments with more than 2 employees?

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/57376933-a0f2-4a36-a753-7d7f0454aca7)

[Output](https://tinyurl.com/sOutput1)

### 2. Find the names of employees, along with their project names, who have been assigned to a project.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/5ad45e51-1a98-4774-84f1-a897656bb8e2)

[Output](https://tinyurl.com/sOutput2)

### 3. List the names of departments that have employees with a salary greater than $70,000.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/f7b1833e-dbf5-4607-b502-e532b9e4f059)

[Output](https://tinyurl.com/sOutput3)

### 4. Find the maximum salary of each department and list the department names with their maximum salary.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/3aefbd1f-df01-4c56-926e-7198944bb048)

[Output](https://tinyurl.com/sOutput4)

### 5. Identify employees who earn the highest salary in their respective departments.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/c47e6a4f-2359-4f51-a2f7-5c5b707f12a9)

[Output](https://tinyurl.com/sOutput5)

### 6. Which employees have the same salary as the minimum salary in their department?

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/bc4a3824-8c11-424c-a041-e7cbe76eef6e)

[Output](https://tinyurl.com/sOutput6)

### 7. List the projects that are not assigned to any employee.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/8be5f3f3-d410-41ea-ac7a-84fd481a3b60)

[Output](https://tinyurl.com/sOutput7)

### 8. Find the names of employees who work on at least one project.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/fdbc8d8a-fa1d-431a-a318-fd2b093a1df1)

[Output](https://tinyurl.com/sOutput8)

### 9. Display the total number of projects each employee is working on. Include employees who are not working on any projects.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/f801bfba-95e1-482c-af30-001861327ecb)

[Output](https://tinyurl.com/sOutput9)

### 10. Find the names of employees who work on more than one project.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/5ddda451-8ef8-41e4-b9c4-6aa0ff053980)

[Output](https://tinyurl.com/sOutput10)

### 11. List the departments that have no employees.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/e67b3c05-12ca-41d3-bdc7-1ba9bfe8dfa8)

[Output](https://tinyurl.com/sOutput11)

### 12. Find the names of employees who have a salary above the overall average salary.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/6f89805d-fbdd-438f-a3f6-c010acbe3ce0)

[Output](https://tinyurl.com/sOutput12)

### 13. List the departments with at least one employee earning more than $80,000.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/100e6a20-bbdf-4346-b9f6-ae5d0b48f6f0)

[Output](https://tinyurl.com/sOutput13)

### 14. Identify employees whose salary is above the average salary of their department but below the overall average salary.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/931f3ca7-a665-4216-b04c-791144ce67ea)

[Output](https://tinyurl.com/sOutput14)

### 15. Find the departments where the total salary of all employees exceeds $200,000.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/6482bc6e-8e98-41a7-8408-a5795a5961c6)

[Output](https://tinyurl.com/sOutput15)

### 16. List the names of employees who work on 'Project A'.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/064e2efd-853f-4f6a-b178-5383817c5ca3)

[Output](https://tinyurl.com/sOutput16)

### 17. Find the employees whose salary is equal to the highest salary in their department.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/216d0172-8145-417a-806e-21490855f34b)

[Output](https://tinyurl.com/sOutput17)

### 18. List the names of employees who do not work in the 'IT' department but have a salary greater than $75,000.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/7e13f4df-a482-4fc8-96d7-afae0ffd29d6)

[Output](https://tinyurl.com/sOutput18)

### 19. Find the names of employees who earn more than the highest salary in the 'HR' department.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/cac94757-ba4a-4056-98d3-3e9e4277ec54)

[Output](https://tinyurl.com/sOutput19)

### 20. Find the employees who earn more than the average salary in their department.

![image](https://github.com/Demblani07/SQL-Based-Company-Data-Analysis/assets/139964555/ec7e0cf3-08f4-4a81-b939-e7afe32e1f33)

[Output](https://tinyurl.com/sOutput20)

## Conclusion
This case study demonstrates the practical application of SQL for managing and analyzing company data related to employees, departments, and projects. By leveraging SQL queries, organizations can gain valuable insights into their operations, enabling better decision-making and efficient resource management. The structured approach to creating, populating, and querying the database serves as a foundation for more advanced data analysis and reporting.
