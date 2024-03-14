--Use correct database--

USE NFL;

--Order teams by win percentage--

SELECT *
FROM teams$
ORDER BY [W-L%] DESC;

--Positive Point Differential--

SELECT 
	Team, 
	W, 
	L, 
	PF, 
	PA, 
	PD
FROM teams$
WHERE PD > 0
ORDER BY PD DESC;

--Aggregations--

SELECT 
	COUNT(Team) AS Number_of_Teams,
	SUM([Yds Allowed]) AS Sum_Yards_Allowed,
	AVG([Yds Allowed]) AS Avg_Yards_Allowed,
	MAX([Yds Allowed]) AS Max_Yards_Allowed,
	MIN([Yds Allowed]) AS Min_Yards_Allowed
FROM defense$

--Defensive Stats using Join--

SELECT 
	t.Team, 
	d.[Def Rank], 
	t.L, 
	t.PA, 
	d.[Yds Allowed], 
	d.[Def Y/P]
FROM teams$ t
JOIN defense$ d
	ON t.Team = d.Team
ORDER BY [Def Rank]

--Create Table--

CREATE TABLE quarterbacks(
	Team VARCHAR(255),
	QB VARCHAR(255),
	Age INT,
	Salary INT
);

--Insert Data--

INSERT INTO quarterbacks (Team, QB, Age, Salary)
VALUES 
('Los Angeles Chargers','Justin Herbert', 26, 262500000),
('Baltimore Ravens', 'Lamar Jackson', 27, 260000000),
('Cincinnati Bengals', 'Joe Burrow', 28, 275000000),
('Philadelphia Eagles', 'Jalen Hurts', 26, 255000000),
('Denver Broncos','Russell Wilson', 36, 245000000),
('Kansas City Chiefs', 'Patrick Mahomes', 29, 450000000),
('Houston Texans', 'C.J. Stroud', 23, 36279246),
('New Orleans Saints', 'Derek Carr', 33, 150000000);

--Alter Table--

EXEC sp_RENAME 'quarterbacks.QB', 'Quarterback', 'COLUMN'

--Case Expression--

SELECT 
	o.Team, 
	o.[Off Rank],
	d.[Def Rank],
	CASE
		WHEN [Off Rank] <= 10 THEN 'Top 10 Offense'
		WHEN [Off Rank] > 10 THEN 'Offense Needs Work'
	END AS top_10_o,
	CASE
		WHEN [Def Rank] <= 10 THEN 'Top 10 Defense'
		WHEN [Def Rank] > 10 THEN 'Defense Needs Work'
	END AS top_10_d
FROM offense$ o
JOIN defense$ d
ON o.Team = d.Team
ORDER BY top_10_o DESC, top_10_d DESC

--Subquery--

SELECT *
FROM teams$
WHERE Team IN (
	SELECT o.Team
	FROM offense$ o
	JOIN defense$ d
		ON o.Team = d.Team
	WHERE o.PF >= 350 AND d.PA <= 400)
ORDER BY W DESC

--CTE--

WITH total_fg_made AS (
	SELECT COUNT(Team) AS Num_of_Teams, [Tot FGM]
	FROM kicking$
	GROUP BY [Tot FGM])

SELECT *
FROM total_fg_made
ORDER BY Num_of_Teams DESC
