---------
--Query 1 - all employee details
---------

SELECT e.emp_no AS Employee_Number
,e.last_name AS Last_Name
,e.first_Name AS First_Name
,e.sex AS Gender
,s.Salary AS Salary
FROM "Employees" e JOIN "Salaries" s
ON e.emp_no=s.emp_no

---------
--Query 2 - all employees hired in 1986
---------

SELECT e.emp_no AS Employee_Number
,e.last_name AS Last_Name
,e.first_Name AS First_Name
,e.hire_date AS Date_Hired
FROM "Employees" e 
WHERE DATE_PART('year',e.hire_date)='1986'
ORDER by date_hired ASC

---------
--Query 3 - Department Manager Information Listing
---------

SELECT d.dept_no AS Department_Number
,d.dept_name AS Department_Name
,dm.emp_no AS Dept_Manager_Employee_Number
,e.First_Name AS First_Name
,e.Last_Name AS Last_Name
,e.Hire_Date AS Date_Hired
FROM "Departments" d JOIN "Dept_Manager" dm ON d.dept_no=dm.dept_no
JOIN "Employees" e ON dm.emp_no=e.emp_no
WHERE e.emp_no IN (
--Limiting Sub-Query
SELECT e.emp_no FROM "Dept_Manager" dm 
JOIN "Employees" e ON dm.emp_no=e.Emp_no
WHERE e.hire_date IN (
SELECT MAX(e.Hire_Date) AS Date_Hired
FROM "Departments" d JOIN "Dept_Manager" dm ON d.dept_no=dm.dept_no
JOIN "Employees" e ON dm.emp_no=e.emp_no
GROUP BY d.dept_no)
) 
ORDER BY d.dept_no ASC, e.Hire_Date ASC




---------
--Query 4 - Employee Department Information Listing
---------

SELECT e.emp_no AS Employee_Number
,e.First_Name AS First_Name
,e.Last_Name AS Last_Name
,d.dept_name AS Department_Name
FROM "Employees" e JOIN "Dept_Emp" de ON e.emp_no=de.emp_no
JOIN "Departments" d ON de.dept_no=d.dept_no
ORDER BY e.emp_no ASC



---------
--Query 5 - Find all Employees named "Hercules B."
---------

SELECT e.First_Name AS First_Name
,e.Last_Name AS Last_Name
,e.sex AS Gender
FROM "Employees" e 
WHERE e.First_Name='Hercules'
AND LEFT(e.Last_Name,1)='B'
ORDER BY e.sex ASC, e.last_name ASC


---------
--Query 6 - All Sales Employees Listing
---------

SELECT e.emp_no AS Employee_Number
,e.First_Name AS First_Name
,e.Last_Name AS Last_Name
,d.dept_name AS Department_Name
FROM "Employees" e JOIN "Dept_Emp" de ON e.emp_no=de.emp_no
JOIN "Departments" d ON de.dept_no=d.dept_no
WHERE d.dept_No = 'd007'
ORDER BY e.emp_no ASC

---------
--Query 7 - Sales and Development Departments Listing
---------

SELECT e.emp_no AS Employee_Number
,e.First_Name AS First_Name
,e.Last_Name AS Last_Name
,d.dept_name AS Department_Name
FROM "Employees" e JOIN "Dept_Emp" de ON e.emp_no=de.emp_no
JOIN "Departments" d ON de.dept_no=d.dept_no
WHERE d.dept_No IN('d005','d007')
ORDER BY d.dept_no ASC,e.emp_no ASC


---------
--Query 8 -- Employee Last Name Counts Listing, Descending
---------

SELECT e.Last_Name AS Last_Name
,COUNT(e.Last_Name) AS Count_SurName
FROM "Employees" e 
GROUP BY e.Last_Name 
ORDER BY COUNT(e.Last_Name) DESC

