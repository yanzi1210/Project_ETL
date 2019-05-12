USE sports_db;
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SELECT COLLEGE,YEAR,COUNT(*) AS 'Number_of_Best_Players' 
FROM NBA_player_school GROUP BY COLLEGE, YEAR ORDER BY YEAR ASC;



