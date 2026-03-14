-- Selects each city along with its amount of teams and its state and country, ordered descending by the amount of teams.
SELECT *
FROM(
	SELECT country, state, city, count(*) as "teamCount"
	FROM Team
	GROUP BY city
	HAVING teamCount > 1)
ORDER BY teamCount DESC, country, state, city