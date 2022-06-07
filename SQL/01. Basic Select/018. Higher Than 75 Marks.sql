-- # Problem: https://www.hackerrank.com/challenges/more-than-75-marks/problem
-- # Score: 15


SELECT Name
FROM Students
WHERE Marks > 75
ORDER BY SUBSTR(Name,-3,3), Id ASC;

--# Another way
select name
from students
where marks > 75
order by right(name,3), id asc;
