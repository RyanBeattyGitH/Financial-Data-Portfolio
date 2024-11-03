#### user_guide.md

```markdown
# User Guide for EPL Analysis 2018/19

## Running SQL Queries

This guide provides instructions on how to run SQL queries to analyze the EPL 2018/19 dataset.

### Prerequisites
- An installed SQL database.
- The dataset imported into your database as per the setup instructions.

### Example Queries

#### Total Matches Played
To find the total number of matches played during the season, run:
```sql
SELECT COUNT(*) AS total_matches FROM matches;
