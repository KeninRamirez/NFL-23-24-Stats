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
5. Lastly, I checked our new master data set (all_df) for missing data. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/d7ba6006-6770-4948-8dd2-8058f40352ba)

# Analyze & Share
### Exploratory Data Analysis (EDA)

1. The first step I took in EDA was to get an understanding of our new data set using the describe() method. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/a2726ffd-f60a-439f-9b90-a5ccb4ab1789)
2. Next, I performed a correlation analysis with emphasis on wins since we want to see key statistical factors that have the greatest impact on wins. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/6ebc05ac-8033-409f-96a3-c94baa62ff4e) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/93bdbf6d-9640-4626-9a70-b968bd2d287d)
3. I then developed regression plots for 'PF', 'Touchback%' and 'Def Rush Att', each showing a positive, weak, and negative linerar relationship. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/ad06f9d3-74ec-441d-b7db-a1b057f98b2c) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/3f598cd8-a826-4c18-9acb-60ce808c527e) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/b529a4ca-1d2d-42e6-9580-8bd7e1891aaa) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/cc1d11ff-c33c-414c-8155-de08e38922b3) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/ab2033e3-66f1-436d-9633-ad4661240076) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/d344d24f-1a51-432f-b434-fb231a2c72b8)
4. With this in mind, we calculated the Pearson correlation and P-Value for the above variables. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/8fa286ee-8f5e-47d7-a5df-60112ceda1b8)
### Model Development

1. When it came to model development, I decided to build a Regression Model. First was the Simple Linear Regression, then a Multiple Linear Regression. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/2fffaef7-a6e7-47a1-91e7-c921c78bac8c) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/3e4be767-aa6d-4c96-b5c4-d3f0f7958274)
2. When evaluating the SLR model I built a Residual Plot. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/1cf5a759-7ba2-4b05-a86b-213b68dc281d) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/481b8cc8-88ce-4fef-aede-6a2a118513e9)
3. Since we cant evaluate MLR models using regression plots, we used a distribution plot instead. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/59c5156b-9377-49d3-a572-67dda66e88be) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/0f3802c2-fe0e-4d98-a8b4-72fdbe4e7da5)
4. When measuring for in-sample evaluation, we want the p-value and Mean Squared Error (MSE).
Measures for SLR model: ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/4c8b5c9a-9e5f-49ab-a031-8783bc81caa3) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/33d77c9e-9152-453a-a6b9-273356141efc)
Measures for MLR model: ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/82dd4a99-f480-4219-812c-777ff52fe0d0) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/5e700556-e00d-4a44-9038-785c6c22d971)
### Model Evaluation and Refinement
An important step in testing your model is to split your data into training and testing data. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/01224d0e-2464-4f11-97ae-8216937b5379) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/49b5db65-2a41-40ac-8a1c-3a8916a9f459)




















