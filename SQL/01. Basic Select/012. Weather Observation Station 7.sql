-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-7/problem
-- # Score: 10

--#Using Regular Expression
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiou]$';

--#Using Right()
SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY,1) IN ('a','e','i','o','u') 
