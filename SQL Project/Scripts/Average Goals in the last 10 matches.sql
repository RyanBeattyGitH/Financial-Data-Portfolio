-- Calculate average goals and PPG in the last 5 matches for each team, displayed as decimals
WITH RecentMatches AS (
    SELECT 
        home_team_name AS team,
        home_team_goal_count AS goals,
        game_week,
        ROW_NUMBER() OVER (PARTITION BY home_team_name ORDER BY game_week DESC) AS match_rank
    FROM [premier-league-matches-2018-to-2019-data]
    
    UNION ALL
    
    SELECT 
        away_team_name AS team,
        away_team_goal_count AS goals,
        game_week,
        ROW_NUMBER() OVER (PARTITION BY away_team_name ORDER BY game_week DESC) AS match_rank
    FROM [premier-league-matches-2018-to-2019-data]
)

SELECT 
    team,
    CAST(AVG(CAST(goals AS DECIMAL(5, 2))) AS DECIMAL(5, 2)) AS AvgGoalsLast5,
    COUNT(*) AS GamesPlayed
FROM RecentMatches
WHERE match_rank <= 5
GROUP BY team;
