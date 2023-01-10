-- How many lifetime hits does Barry Bonds have?

-- First I did it as two steps, running the following:
-- SELECT id, first_name, last_name
-- FROM players
-- WHERE last_name = "Bonds";
-- this returned:

-- id       first_name  last_name 
----------  ----------  ----------
-- 1678        Barry       Bonds     
-- 1679        Bobby       Bonds  

-- THEN
-- SELECT SUM(hits)
-- FROM stats
-- WHERE player_id = 1678;
-- what i needed to do was USE A JOIN to pull from both tables at once

SELECT SUM(stats.hits)
FROM stats INNER JOIN players ON players.id = stats.player_id
WHERE players.first_name = "Barry"
AND players.last_name = "Bonds";

-- Expected result:
-- 2935


