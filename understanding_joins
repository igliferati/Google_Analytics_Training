/** We will use JOINS to get the information that we need from Employees and Departmnets Table **/

--- Using INNER JOIN ---

SELECT 
employees.name AS employees_name,
employees.role AS employees_role,
departments.name AS departments_name
FROM 
  employees
  INNER JOIN 
  departments
  ON
  employees.departments_id = departments.departments_id

--- Using LEFT JOIN ---

SELECT  
employees.name AS employees_name,
employees.role AS employees_role,
departments.name AS departments_name
FROM 
  employees
  LEFT JOIN 
  departments
  ON
  employees.departments_id = departments.departments_id

--- Using RIGHT JOIN ---

SELECT  
employees.name AS employees_name,
employees.role AS employees_role,
departments.name AS departments_name
FROM 
  employees
  RIGHT JOIN 
  departments
  ON
  employees.departments_id = departments.departments_id

--- Using OUTER JOIN ---

SELECT  
employees.name AS employees_name,
employees.role AS employees_role,
departments.name AS departments_name
FROM 
  employees
  FULL OUTER JOIN 
  departments
  ON
  employees.departments_id = departments.departments_id
