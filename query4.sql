-- Creates a moving average of teleop scores (per robot) in all match performances at the Buckeye Regional in 2025, with range from the first to current row.
SELECT match AS "matchNumber", avg(teleop) over(ORDER BY match ROWS UNBOUNDED PRECEDING) AS "teleAvg"
FROM(
	SELECT *
	FROM MatchPerformance
	WHERE competitionID = (
		SELECT competitionID
		FROM Competition
		WHERE competitionName = "Buckeye Regional" AND year = 2025))