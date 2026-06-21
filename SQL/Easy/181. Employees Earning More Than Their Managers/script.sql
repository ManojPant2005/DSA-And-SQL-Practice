-- For Joe:

-- id = 1
-- salary = 70000
-- managerId = 3

-- Now look for:

-- id = 3

-- That is:

-- Sam
-- salary = 60000

-- Comparison:

-- Joe = 70000
-- Sam = 60000

-- Therefore:

-- 70000 > 60000

--Joe should be returned.


--***  Answer:  ***

SELECT e.name AS Employee
FROM Employee e
JOIN Employee m
    ON e.managerId = m.id
WHERE e.salary > m.salary;