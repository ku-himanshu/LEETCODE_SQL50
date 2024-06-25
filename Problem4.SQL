/*PROBLEM: 1148. Article Views I 
https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50

Table: Views
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+
There is no primary key (column with unique values) for this table, the table may have duplicate rows.
Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
Note that equal author_id and viewer_id indicate the same person.

Write a solution to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order.*/

--SOLUTION:--
select distinct author_id as id from Views
where viewer_id = author_id order by id Asc