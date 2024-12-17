-- Predict If Likley to win Based on Betting odds
SELECT 
    date_GMT,
    home_team_name,
    away_team_name,
    CASE 
        WHEN odds_ft_home_team_win < 2 THEN 'Likely Win'
        ELSE 'Unlikely Win'
    END AS Home_Team_Win_Prediction
FROM [premier-league-matches-2018-to-2019-data];
