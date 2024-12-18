# Ryan Beatty's Portfolio

### Tableau Visulisation: Lloyds Banking Group Stock Analysis 2023

![Lloyds Banking Group 2023 Stock Analysis](https://github.com/user-attachments/assets/66db8831-0f0f-4ff4-95e5-4566a2e12250)


**Description**: Using Excel and Tableau, this project analyzes the stock price trends of Lloyds Banking Group for 2023 with a focus on daily price fluctuations, moving averages, and trading volume.
**Link**: https://github.com/RyanBeattyGitH/Financial-Data-Portfolio/tree/main/Excel-Tableau-Project

### SQL script example: The English Premier League Analysis 2018/19

[Uploading Av-- Calculate average goals and PPG in the last 5 matches for each team, displayed as decimals
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
erage Goals in the last 10 matches.sql…]()


**Description**: Using SQL, the EPL Analysis 2018/19 project aims to provide insights into the English Premier League (EPL) matches from the 2018/19 season.
**Link**: https://github.com/RyanBeattyGitH/Financial-Data-Portfolio/tree/main/SQL%20Project

### Python Predictive Modelling: Nikkei 225 Price Prediction Model
**Description**: Using Python, this project analyzes daily price data from the Nikkei 225 index from May 1, 1965, to October 20, 2023. And creates a Linear regression predicting the prices between October 20, 2023 & October 20, 2024.
**Link**: https://github.com/RyanBeattyGitH/Financial-Data-Portfolio/tree/main/Python%20Project

## Certifications
**CompTIA Data+ Certified** – Computing Technology Industry Association (Issued: October 2024)

**BCS Business Analysis Foundation Certified** – BCS, The Chartered Institute for IT (Issued: September 2024)

## Contact
- **Email**: Ryanbeatsbe@hotmail.com
- **LinkedIn**: (https://www.linkedin.com/in/ryan-beatty-84606683/)
- **Mobile**: 07412956701
