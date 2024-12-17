-- Total matches played
SELECT COUNT(*) FROM [premier-league-matches-2018-to-2019-data];

-- Matches won by home teams
SELECT COUNT(*) FROM [premier-league-matches-2018-to-2019-data] WHERE home_team_goal_count > away_team_goal_count;

-- Average goals per match
SELECT AVG(CAST(home_team_goal_count + away_team_goal_count AS DECIMAL(10, 2))) AS average_goals FROM [premier-league-matches-2018-to-2019-data];
