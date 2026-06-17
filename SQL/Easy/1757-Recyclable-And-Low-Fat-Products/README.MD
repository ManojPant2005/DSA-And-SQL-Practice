# 1757. Recyclable and Low Fat Products

* Problem Statement

Write a query to find the IDs of products that are both low fat and recyclable.

## Approach

The solution filters records from the `Products` table using the `WHERE` clause. Only products with:

* low_fats = 'Y'`
* recyclable = 'Y'`

are selected.

## SQL Query

```sql
SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';
```

## Complexity Analysis

| Metric           | Complexity |
| ---------------- | ---------- |
| Time Complexity  | O(n)       |
| Space Complexity | O(1)       |

## Concepts Practiced

* SELECT Statement
* WHERE Clause
* Logical AND Operator
* Basic Data Filtering

## Learning Notes

This problem demonstrates how to filter data based on multiple conditions using the `WHERE` clause and the `AND` operator. It is a fundamental SQL concept that is frequently used in real-world database queries.
