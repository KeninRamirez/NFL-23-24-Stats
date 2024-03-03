# Introduction
In this case study, I will perform many tasks of a data analyst. In order to answer key questions, I will follow the steps of the data analysis process: Ask, Prepare, Process, Analyze, Share, and Act.
### Quick Links

-Data Source: [Pro Football Reference](https://www.pro-football-reference.com/years/2023/) Accessed: 2/17/2024

-Python Code: [nfl_portfolio_project](https://github.com/KeninRamirez/NFL-23-24-Stats/blob/main/nfl_portfolio_project.ipynb)

-Data Visualizations: Python

# Ask
### Business Task

Determine the key statistical factors that have the greatest impact on securing victories.

### Guiding Questions

1. What topic am I exploring?
2. What is the problem I am trying to solve?
3. What metrics will I use to measure my data to achieve my objective?
4. Who are/is the stakeholders/audience?
5. How can my insights help make decisions?

# Prepare
### Data Source

I will use Pro Football References' data to analyze and identify trends from the 2023-2024 NFL season which can be downloaded from [Pro Football Reference](https://www.pro-football-reference.com/years/2023/).

### Data Organization
There are 6 files I used (AFC Standings, NFC Standings, Team Offense, Kick & Punt Returns, Kicking, and Team Defense) when performing my analysis. All files include relevent stat information from all games played within the season. For example, AFC and NFC Standings includes general information such as: Team (T), Wins (W), Losses (L), Points For (PF), Points Against (PA), etc., where as Team Offense includes information such as: Offensive Ranks (Off Rank), Yards Gained (Yds Gained), Offensive Yards per Play (Off Y/P), etc.

### Data Credibility
The data is original and comes from a reliable organization, comprehensive, current, and cited.

### Licensing and Privacy

# Process
### Tools

I decided to use Microsoft Excel and Python libraries for this project. I was able to use excel because there wasn't large amounts of data. If the data had 1 million+ rows, I'd use BigQuery. I utilized Python libraries to combine, clean, and analyze the various datasets.

### Data Cleaning and Preprocessing

1. The first step I took was to combine the AFC and NFC standings datasets (teams_df) since their column names were the exact same and any changes I needed to make can be done once. I then renamed the 'Tm' column to 'Team', changed data type to string, and stripped the values within the column to get rid of unwanted spaces and characters. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/5d0011bc-5a88-4cb7-a96b-8e81e687e1ce)

2. Next, I brought in the Team Defense data set, renamed columns, changed data types, and limited the amount of rows I wanted to see (I only wanted to see team stats, not averages or totals.) I proceeded to do the same thing for the rest of the datasets. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/ec7e516a-41eb-4ce6-adb9-65c490630473)
 ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/dee8eea2-4ece-43b1-b0ef-12930e02ff8e)
3. One difference in the Kicking data set is that I had to fill missing values with 0. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/3b305264-c00a-4f5d-8524-95b4b9866a31)
4. When it came to merging all data sets together, I first merged the Offensive and Defensive data sets (offdeff_df), then merged all data sets to the merged AFC/NFC data set (teams_df). ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/9f3cc70a-ad8c-4ab9-880d-a4873147ff5b)






# Analyze
