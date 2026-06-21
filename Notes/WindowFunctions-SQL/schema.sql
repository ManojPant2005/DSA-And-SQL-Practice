CREATE TABLE Employees
(
    EmployeeId INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employees VALUES
(1,'Rahul','IT',60000),
(2,'Amit','IT',70000),
(3,'Neha','HR',40000),
(4,'Priya','HR',50000),
(5,'Vikas','IT',80000),
(6,'Ankit','Sales',45000),
(7,'Pooja','Sales',55000),
(8,'Rohit','Sales',65000);


-- 1. ROW_NUMBER()

-- Assigns unique number to each row.

-- Example
SELECT *,
       ROW_NUMBER() OVER(ORDER BY Salary DESC) AS RowNum
FROM Employees;


--Department Wise Ranking
SELECT *,
       ROW_NUMBER() OVER(
           PARTITION BY Department
           ORDER BY Salary DESC
       ) AS DeptRank
FROM Employees;


-- 3. DENSE_RANK()

-- Same as RANK but no gaps.

-- Example

SELECT *,
       DENSE_RANK() OVER(
           ORDER BY Salary DESC
       ) AS DenseRankNo
FROM Employees;