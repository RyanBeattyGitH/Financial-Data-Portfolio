-- Compare predicted and actual results for Over/Under 2.5 Goals
SELECT 
    date_GMT AS 'Date',
    home_team_name AS 'Home Team',
    away_team_name AS ' Away Team',
    odds_ft_over25 AS 'BTTS odds',
    
    CASE 
        WHEN odds_ft_over25 > 1.6 THEN 'Over 2.5 Goals'
        ELSE 'Under 2.5 Goals'
    END AS Goals_Prediction,
    total_goal_count,
    CASE 
        WHEN total_goal_count > 2 THEN 'Over 2.5 Goals'
        ELSE 'Under 2.5 Goals'
    END AS Actual_Result
FROM [premier-league-matches-2018-to-2019-data]
WHERE home_team_name = 'Liverpool' OR away_team_name = 'Liverpool';
