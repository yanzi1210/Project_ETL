USE sports_db;
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SELECT COLLEGE,COUNT(*) AS 'Number_of_Best_Players' 
FROM NFL_data GROUP BY COLLEGE ORDER BY Number_of_Best_Players desc;