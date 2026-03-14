-- Selects all teams with their number, name, and amount of times they got a yellow or red card across all competitions, ordered descending by penalty amount.
SELECT teamNumber, teamName, count(*) AS "penaltyCount"
FROM(
	SELECT *
	FROM Team NATURAL JOIN Robot NATURAL JOIN MatchPerformance
	WHERE penaltyCard IS NOT NULL)
GROUP BY teamNumber
ORDER BY penaltyCount DESC