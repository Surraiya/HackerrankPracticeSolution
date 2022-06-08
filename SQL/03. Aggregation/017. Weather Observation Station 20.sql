-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
-- # Score: 40

--# MySQL doesn't have median function therefore we use a variable rowindex then sort a table in a ascending order where the value of rowindex is the total rows of the table 
--# if the rows is even number then in where condition it'll return one row as median and if it is odd number then it'll return two rows. Then we will avg the LAT_N value of that two rows.
set @rowindex := -1;
select round(avg(s.LAT_N),4)
from (select @rowindex:= @rowindex + 1 as row_index, LAT_N
from station
order by LAT_N) as s
where s.row_index in (floor(@rowindex/2),ceil(@rowindex/2)) 
