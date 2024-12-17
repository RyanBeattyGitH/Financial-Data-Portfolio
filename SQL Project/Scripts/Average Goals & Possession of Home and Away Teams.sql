-- Average goals scored by home and away teams over all 380 matches, displayed with decimal points
SELECT 
    CAST(AVG(CAST(home_team_goal_count AS DECIMAL(5, 2))) AS DECIMAL(5, 2)) AS AvgHomeGoals,
    CAST(AVG(CAST(away_team_goal_count AS DECIMAL(5, 2))) AS DECIMAL(5, 2)) AS AvgAwayGoals,
    CAST(AVG(CAST(total_goal_count AS DECIMAL(5, 2))) AS DECIMAL(5, 2)) AS AvgTotalGoals
FROM [premier-league-matches-2018-to-2019-data];

-- Average possession for home and away teams
SELECT 
    AVG(home_team_possession) AS AvgHomePossession,
    AVG(away_team_possession) AS AvgAwayPossession
FROM [premier-league-matches-2018-to-2019-data];
