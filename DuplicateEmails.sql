/* DuplicateEmails : https://leetcode.com/problems/duplicate-emails/
Write a SQL query to find all duplicate emails in a table named Person.

+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
For example, your query should return the following for the above table:

+---------+
| Email   |
+---------+
| a@b.com |
+---------+
Note: All emails are in lowercase. */

# Using Join
select distinct a.email from person a join person b on a.email=b.email and a.id!=b.id ;

# Using group by
select email from person group by email having count(email)>1;