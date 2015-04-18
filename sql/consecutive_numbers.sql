-- Write a SQL query to find all numbers that appear at least three times consecutively.
-- 
-- +----+-----+
-- | Id | Num |
-- +----+-----+
-- | 1  |  1  |
-- | 2  |  1  |
-- | 3  |  1  |
-- | 4  |  2  |
-- | 5  |  1  |
-- | 6  |  2  |
-- | 7  |  2  |
-- +----+-----+
-- For example, given the above Logs table, 1 is the only number that appears consecutively for at least three times.

-- MySQL

-- solution

SELECT DISTINCT t1.Num
FROM Logs t1 JOIN Logs t2 ON t1.Num = t2.Num JOIN Logs t3 ON t2.Num = t3.Num
WHERE t2.Id - t1.Id = 1 AND t3.Id - t2.Id = 1;
