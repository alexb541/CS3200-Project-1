-- Selects all team members and their name if they don't have points or their points are greater than or equal to their team's points level (all team members who are eligible to attend competition).
SELECT teamNumber, memberName
FROM Team NATURAL JOIN TeamMember
WHERE points IS NULL OR points >= pointsLevel
ORDER BY teamNumber