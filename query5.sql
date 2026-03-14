-- Selects all teams with their number, name, and pointsLevel if their pointsLevel is greater than the average for all teams.
SELECT teamNumber, teamName, pointsLevel
FROM Team
WHERE pointsLevel > (
	SELECT avg(pointsLevel) AS "avgPoints"
	FROM Team)
ORDER BY pointsLevel DESC