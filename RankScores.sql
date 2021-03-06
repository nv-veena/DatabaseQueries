/*RankScores : https://leetcode.com/problems/rank-scores/

Write a SQL query to rank scores. If there is a tie between two scores, 
both should have the same ranking. Note that after a tie, the next ranking 
number should be the next consecutive integer value. In other words, 
there should be no "holes" between ranks.

+----+-------+
| Id | Score |
+----+-------+
| 1  | 3.50  |
| 2  | 3.65  |
| 3  | 4.00  |
| 4  | 3.85  |
| 5  | 4.00  |
| 6  | 3.65  |
+----+-------+
For example, given the above Scores table, your query should generate 
the following report (order by highest score):

+-------+------+
| Score | Rank |
+-------+------+
| 4.00  | 1    |
| 4.00  | 1    |
| 3.85  | 2    |
| 3.65  | 3    |
| 3.65  | 3    |
| 3.50  | 4    |
+-------+------+


MSSQL provides DENSE_RANK option which does not skip "Rank". Whereas RANK() option skips ranks*/

#MSSQL Query for the above requirement
select Score,DENSE_RANK () OVER( order by Score desc) as Rank from Scores;

#MYSQL Query
select Score,(select count(distinct score) from scores where score>=s.score) as Rank from scores s;

