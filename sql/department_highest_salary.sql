-- The Employee table holds all employees. Every employee has an Id,
-- a salary, and there is also a column for the department Id.
-- 
-- +----+-------+--------+--------------+
-- | Id | Name  | Salary | DepartmentId |
-- +----+-------+--------+--------------+
-- | 1  | Joe   | 70000  | 1            |
-- | 2  | Henry | 80000  | 2            |
-- | 3  | Sam   | 60000  | 2            |
-- | 4  | Max   | 90000  | 1            |
-- +----+-------+--------+--------------+
-- The Department table holds all departments of the company.
-- 
-- +----+----------+
-- | Id | Name     |
-- +----+----------+
-- | 1  | IT       |
-- | 2  | Sales    |
-- +----+----------+
-- Write a SQL query to find employees who have the highest salary in
-- each of the departments. For the above tables, Max has the highest
-- salary in the IT department and Henry has the highest salary in the
-- Sales department.
-- 
-- +------------+----------+--------+
-- | Department | Employee | Salary |
-- +------------+----------+--------+
-- | IT         | Max      | 90000  |
-- | Sales      | Henry    | 80000  |
-- +------------+----------+--------+


-- MySQL

-- solution

SELECT d.Name, e1.Name, e1.Salary
FROM Employee e1 JOIN Department d ON e1.DepartmentId = d.Id
WHERE e1.Salary = (SELECT MAX(Salary)
      		  FROM Employee e2
		  WHERE e2.DepartmentId = e1.DepartmentId)
