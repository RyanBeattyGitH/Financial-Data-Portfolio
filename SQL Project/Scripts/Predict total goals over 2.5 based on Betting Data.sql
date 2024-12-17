-- Predict total goals over 2.5 based on Betting Data
SELECT 
    date_GMT,
    home_team_name,
    away_team_name,
    CASE 
        WHEN odds_ft_over25 > 1.6 THEN 'Likely Over 2.5 Goals'
        ELSE 'Likely Under 2.5 Goals'
    END AS GoalsPrediction
FROM [premier-league-matches-2018-to-2019-data];
