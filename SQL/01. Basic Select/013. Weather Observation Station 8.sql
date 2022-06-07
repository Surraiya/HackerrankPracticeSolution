-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-8/problem
-- # Score: 15


select distinct city
from station
where city regexp '^[aeiou].*[aeiou]$';
