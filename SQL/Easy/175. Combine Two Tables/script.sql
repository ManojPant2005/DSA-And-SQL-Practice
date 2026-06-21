--Build Query Step-by-Step : All Records from person table
Start With Person
SELECT *
FROM Person


--2: Add Address
--Without binding any condition, this will return a Cartesian product of the two tables
SELECT *
FROM Person
LEFT JOIN Address


--Match Using personId
SELECT *
FROM Person
LEFT JOIN Address
ON Person.personId = Address.personId


--Step 6: Select Required Columns


-- firstName
-- lastName
-- city
-- state

-- So:

SELECT
    FirstName,
    LastName,
    City,
    State
FROM Person
LEFT JOIN Address
ON Person.personId = Address.personId;