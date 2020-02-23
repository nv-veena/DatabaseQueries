/* 
https://www.hackerrank.com/challenges/weather-observation-station-20/problem

A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

Input Format

The STATION table is described as follows:
==========================
Field		|	Type
==========================
ID			|	Number
CITY		|	VARCHAR
STATE		|	VARCHAR
LAT_N		|	Number
LONG_W		|	Number
==========================

*/
select round(LAT_N,4) from station s where (select count(lat_n) from station where lat_n<s.lat_n) = (select count(lat_n) from station where lat_n>s.Lat_n);