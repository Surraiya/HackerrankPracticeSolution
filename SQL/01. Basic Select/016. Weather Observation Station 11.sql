-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
-- # Score: 15


SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[^aeiou]|.*[^aeiou]$'

--#Another way
SELECT DISTINCT CITY 
FROM STATION 
WHERE RIGHT (CITY, 1) NOT IN ('A','E', 'I', 'O', 'U') 
     OR LEFT (CITY,1) IN ('A','E', 'I', 'O', 'U');
