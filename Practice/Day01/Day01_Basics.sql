/* ============================================================
   DAY 01 - SQL BASICS (50 QUESTIONS)
   Topics:
   SELECT, DISTINCT, WHERE, ORDER BY, TOP,
   BETWEEN, IN, LIKE, NULL, AND, OR
   ============================================================ */


--Section 1: Basic SELECT (1-10)
/* 1. Display all records from Employees. */
select *
from corp.employees;

/* 2. Display only EmployeeID, FirstName and LastName. */
select EmployeeID, FirstName, LastName
from corp.employees;

/* 3. Display all records from Departments. */
select *
from corp.Departments;

/* 4. Display all records from Projects. */
select *
from corp.projects;

/* 5. Display all records from Clients. */
select *
from corp.clients;

/* 6. Display EmployeeID and Email from Employees. */
select EmployeeID, Email
from corp.employees;

/* 7. Display ProjectID and ProjectName from Projects. */
select ProjectID, ProjectName
from corp.Projects;

/* 8. Display DepartmentID and DepartmentName from Departments. */
select DepartmentID, DepartmentName
from corp.Departments;

/* 9. Display all columns from Roles. */
select *
from corp.Roles;

/* 10. Display all columns from PerformanceReviews. */
select *
from corp.PerformanceReviews;

----------------------------------------------------------------
--Section 2: DISTINCT (11-15)
/* 11. Display distinct DepartmentIDs from Employees. */
select distinct(DepartmentID)
from corp.Employees;

/* 12. Display distinct RoleIDs from Employees. */
select distinct(RoleID)
from corp.employees;

/* 13. Display distinct ManagerIDs from Employees. */
select distinct(ManagerID)
from corp.employees;

/* 14. Display distinct ProjectIDs from EmployeeProjects. */
select distinct(ProjectID)
from corp.EmployeeProjects;

/* 15. Display distinct EmployeeIDs from Timesheets. */
select distinct(EmployeeID)
from corp.Timesheets;

---------------------------------------------------------------
--Section 3: WHERE (16-25)
/* 16. Display employees with Salary greater than 80000. */
select *
from corp.employees e
where e.salary> 80000;

/* 17. Display employees with Salary less than 75000. */
select *
from corp.employees e
where e.salary < 75000;

/* 18. Display employees with Salary equal to 70000. */

select * 
from corp.employees e
where e.salary = 70000;

/* 19. Display employees working in DepartmentID = 1. */
select *
from corp.employees
where DepartmentID =1; 

/* 20. Display employees working in DepartmentID = 2. */
select *
from corp.employees
where DepartmentID =2; 

/* 21. Display employees having RoleID = 5. */
select *
from corp.employees
where RoleID =5; 

/* 22. Display projects with Status = 'Active'. */
select * 
from corp.Projects
where Status = 'Active';

/* 23. Display projects with Status = 'Completed'. */
select * 
from corp.Projects
where Status = 'Completed';

/* 24. Display tasks with Priority = 'High'. */
select *
from corp.Tasks
where Priority = 'High';

/* 25. Display tasks with Status = 'Open'. */
select *
from corp.Tasks
where Status = 'Open';

--------------------------------------------------------------
--Section 4: ORDER BY (26-30)
/* 26. Display employees ordered by Salary ascending. */
select *
from corp.employees
order by salary asc;

/* 27. Display employees ordered by Salary descending. */
select *
from corp.employees
order by salary DESC;

/* 28. Display employees ordered by FirstName ascending. */
select * 
from corp.employees
order by FirstName ASC;

/* 29. Display projects ordered by Budget descending. */
select *
from corp.projects
order by Budget DESC

/* 30. Display tasks ordered by DueDate ascending. */
select * 
from corp.tasks
order by DueDate ASC;
----------------------------------------------------------------
--Section 5: TOP (31-35)
/* 31. Display top 5 highest-paid employees. */
select TOP 5 * 
from corp.employees
order by salary desc;

/* 32. Display top 3 lowest-paid employees. */
select top 3 * 
from corp.employees
order by salary ASC;

/* 33. Display top 10 employees ordered by HireDate. */
select top 10 *
from corp.employees
order by HireDate DESC;

/* 34. Display top 5 projects with highest budget. */
select top 5 *
from corp.projects
order by budget DESC;

/* 35. Display top 2 latest hired employees. */
select top 2 *
from corp.employees
order by HireDate DESC;

----------------------------------------------------------------
--Section 6: BETWEEN (36-40)
/* 36. Display employees with Salary between 70000 and 100000. */
select *
from corp.employees 
where salary between 70000 and 100000

/* 37. Display employees with Salary NOT between 70000 and 100000. */
select *
from corp.employees 
where salary not between 70000 and 100000

/* 38. Display projects with Budget between 500000 and 2000000. */
select * 
from corp.projects p 
where p.budget between 500000 and 2000000;

/* 39. Display timesheets with HoursWorked between 7 and 8. */
select * 
from corp.Timesheets t
where t.HoursWorked between 7 and 8

/* 40. Display employees hired between '2022-01-01' and '2024-12-31'. */
select * 
from corp.employees e
where e.hiredate between '2022-01-01' and '2024-12-31';

-----------------------------------------------------------------------------------
--Section 7: IN and NOT IN (41-44)
/* 41. Display employees working in DepartmentID 1, 2, or 3. */
select *
from corp.employees e
where e.DepartmentID IN (1,2,3);

/* 42. Display employees whose RoleID is 1 or 2. */
select *
from corp.employees e
where e.RoleID IN (1,2);

/* 43. Display projects whose ClientID is 1, 2, or 3. */
select *
from corp.projects p
where p.ClientID IN (1,2,3);

/* 44. Display employees NOT working in DepartmentID 4 or 5. */
select * 
from corp.employees e 
where e.DepartmentID not in (4,5);
----------------------------------------------------------------------------
--Section 8: LIKE (45-50)
/* 45. Display employees whose FirstName starts with 'A'. */
select *
from corp.employees e 
where e.FirstName LIKE 'A%';

/* 46.  Display employees whose LastName ends with 'a'. */
select * 
from corp.employees e 
where e.LastName LIKE '%a';

/* 47. Display employees whose LastName has 'h' in second place */
select *
from corp.employees e 
where e.LastName LIKE '_h%';

/* 48. Display employees whose FirstName contains the letter 'r'. */
select *
from corp.employees e
where e.FirstName LIKE '%r%';

/* 49. Display employees whose FirstName has exactly 5 characters. */
select *
from corp.employees e 
where e.FirstName LIKE '_____';

/* 50. Display employees whose FirstName starts with 'A' and ends with 't'. */
select * 
from corp.employees e 
where e.FirstName LIKE 'A%T';
-------------------------------------------------------------------------------------------
--Section 9: AND / OR (49-50)
/* 51. Display employees with Salary > 80000 AND DepartmentID = 1. */
select * 
from corp.employees e
where e.salary > 80000 and e.departmentID = 1;

/* 52. Display employees with DepartmentID = 1 OR DepartmentID = 2. */
select * 
from corp.employees e 
where e.departmentID = 1 or e.departmentID = 2;