/*https://www.hackerrank.com/challenges/earnings-of-employees/problem
We define an employee's total earnings to be their monthly  worked, and the maximum 
total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the 
total number of employees who have maximum total earnings. Then print these values as  
space-separated integers.

Input Format
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| employee_id   | int     |
| name          | varchar |
| months		|Integer  |
| salary        | Integer |
+---------------+---------+

Example output -
108064 7
where 7 employees of earnings 108064
*/
#MS-SQL solution
select max(salary * months),count(*) from employee  where salary * months = (select max(salary * months) from employee);