-- Calculate the average salary for each department: Group By

SELECT DepartmentId, AVG(Salary)
FROM Employees
GROUP BY DepartmentId;


-- Calculate the average salary for each department: Window Function

SELECT EmployeeName,
       DepartmentId,
       Salary,
       AVG(Salary) OVER(PARTITION BY DepartmentId) AS AvgSalary
FROM Employees;


| Employee | Dept | Salary | AvgSalary |
| -------- | ---- | ------ | --------- |
| Rahul    | IT   | 60000  | 65000     |
| Amit     | IT   | 70000  | 65000     |
| Neha     | HR   | 40000  | 45000     |
| Priya    | HR   | 50000  | 45000     |



Window Function Syntax
Function_Name()
OVER(
      PARTITION BY Column
      ORDER BY Column
)

-- Creates groups.

-- Like GROUP BY but doesn't collapse rows.

-- ORDER BY

-- Determines row sequence inside each partition.

-- OVER()

-- Makes a function a window function.