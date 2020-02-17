/*https://www.hackerrank.com/challenges/the-blunder/problem
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed), and the actual average salary.

Write a query calculating the amount of error (i.e.Actual -Miscalculated:  average monthly salaries), and round it up to the next integer.

The EMPLOYEES table is described as follows:
Input Format
-----------------
Column	|	Type
-----------------
ID		|	Integer
Name	|	String
Salary	|	Integer
--------------------

Sample Input
--------------------------------
ID		|	Name	| Salary
--------------------------------
1		|	Kristeen|1420
2		|	Ashley	|2006
3		|	Julia	|2210
4		|	Maria	|3000
------------------

Below table shows Salaries without zeroes
--------------------------------
ID		|	Name	| Salary
--------------------------------
1		|	Kristeen|142
2		|	Ashley	|26
3		|	Julia	|221
4		|	Maria	|3
------------------
Samantha computes an average salary of 98.00. The actual average salary is 2159.00.

The resulting error between the two calculations is 2159-98=2061 which, when rounded to the next integer, is .
*/
select ceiling(avg(salary)-avg(replace(salary,'0',''))) from employees;