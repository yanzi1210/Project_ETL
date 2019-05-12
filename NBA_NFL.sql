USE sports_db;
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT COLLEGE,YEAR,COUNT(*) AS 'Number_of_Best_Players' 
FROM NBA_player_school GROUP BY COLLEGE, YEAR ORDER BY YEAR ASC;

SELECT COLLEGE,COUNT(*) AS 'Number_of_Best_Players' 
FROM NFL_data GROUP BY COLLEGE ORDER BY Number_of_Best_Players desc;

SELECT COLLEGE,COUNT(*) AS 'Number_of_Best_Players' 
FROM NBA_player_school GROUP BY COLLEGE ORDER BY Number_of_Best_Players desc;

select NCAAF.YEAR, NCAAF.CHAMPION,NFL.Player 
from NCAAF_data NCAAF
LEFT join NFL_data NFL on (NCAAF.CHAMPION = NFL.COLLEGE )
WHERE NCAAF.index = 2 and NFL.YEAR =2016;



