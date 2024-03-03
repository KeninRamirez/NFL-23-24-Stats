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

1. The first step I took in EDA was to get an understanding of our new data set using the describe() method. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/ebce48b0-e1f4-40ce-bcec-ab07018ae59a)

2. Next, I performed a correlation analysis with emphasis on wins since we want to see key statistical factors that have the greatest impact on wins.

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/6ebc05ac-8033-409f-96a3-c94baa62ff4e) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/93bdbf6d-9640-4626-9a70-b968bd2d287d)

3. I then developed regression plots for 'PF', 'Touchback%' and 'Def Rush Att', each showing a positive, weak, and negative linear relationship.

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/ad06f9d3-74ec-441d-b7db-a1b057f98b2c) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/3f598cd8-a826-4c18-9acb-60ce808c527e) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/b529a4ca-1d2d-42e6-9580-8bd7e1891aaa) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/cc1d11ff-c33c-414c-8155-de08e38922b3) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/ab2033e3-66f1-436d-9633-ad4661240076) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/d344d24f-1a51-432f-b434-fb231a2c72b8)

4. With this in mind, we calculated the Pearson correlation and P-Value for the above variables. ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/8fa286ee-8f5e-47d7-a5df-60112ceda1b8)
### Model Development

1. When it came to model development, I decided to build a Regression Model. First was the Simple Linear Regression, then a Multiple Linear Regression.
  
![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/2fffaef7-a6e7-47a1-91e7-c921c78bac8c) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/3e4be767-aa6d-4c96-b5c4-d3f0f7958274)

2. When evaluating the SLR model I built a Residual Plot. If the points in a residual plot are randomly spread out around the x-axis, then a linear model is appropriate for the data. Randomly spread out residuals means that the variance is constant, and thus the linear model is a good fit for this data.

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/1cf5a759-7ba2-4b05-a86b-213b68dc281d) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/481b8cc8-88ce-4fef-aede-6a2a118513e9)

3. Since we cant evaluate MLR models using regression plots, we used a distribution plot instead. We can look at the distribution of the fitted values that result from the model and compare it to the distribution of the actual values.

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/b4d109ae-4930-4509-bcf8-1038079f6609)
 ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/0f3802c2-fe0e-4d98-a8b4-72fdbe4e7da5)

We can see that the fitted values are reasonably close to the actual values since the two distributions overlap a bit.

4. When measuring for in-sample evaluation, we want the p-value and Mean Squared Error (MSE). Measures for SLR model:

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/4c8b5c9a-9e5f-49ab-a031-8783bc81caa3) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/31ae936f-9811-43f9-a504-038d7e0398d8)

Measures for MLR model: 

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/8cd05896-3163-4b16-beba-42c2e01141bd)
![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/cc16d82a-1a3b-46a8-bbd9-86b02d53dab9)

### Model Evaluation and Refinement
1. An important step in testing your model is to split your data into training and testing data.

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/01224d0e-2464-4f11-97ae-8216937b5379) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/49b5db65-2a41-40ac-8a1c-3a8916a9f459)
 
2. We then test our test data and trainig data:

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/cae47c58-b2fc-49ac-96ac-be7c27150cdb)

3. Sometimes you do not have sufficient testing data; as a result, you may want to perform cross-validation.
  
![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/233f255f-ee7b-4730-91d7-2424e5aed717)

4. We then check for overfitting and underfitting:

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/894a5c11-c9c1-48e9-aa04-6b26f7084b5b) 

Prediction using training data: 

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/40002860-d6fa-4a3e-a745-df8523455329) 

Predcition using test data: 

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/158d5538-9f36-4692-adec-0a0192c0d6e2)

5. Next lets perform some model evaluation using our training and testing data separately. Training Data:

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/8d6f1c7f-3c73-46ec-8642-f362d13830c8) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/e3172868-c61e-4de5-8c80-34335d64936b)

Test Data: 

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/dd6cf7f9-14a6-4d79-88d0-148ac701a35b) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/9066669f-597e-41d3-9e08-1ff70b48ad31)

Comparing Figure 1 and Figure 2, it is evident that the distribution of the test data in Figure 1 is much better at fitting the data.
### Ridge Regression
1. In this section, we will review Ridge Regression and see how the parameter alpha changes the model.

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/0f5398c2-ee51-4861-9f96-13a13427103a)
 
2. We select the value of alpha that minimizes the test error. To do so, we can use a for loop. We have also created a progress bar to see how many iterations we have completed so far.

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/152e7f0c-99e6-47c6-b06c-d3f689af904d)
 
3. We can plot out the value of R^2 for different alphas:
 
![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/e75b2abd-1da8-4c66-9efd-71b06ccd2789) ![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/a955274d-4eb9-4de0-901b-e1a6c3193ab2)
  
The red line in the figure represents the R^2 of the training data. As alpha increases the R^2 decreases. Therefore, as alpha increases, the model performs worse on the training data. The blue line represents the R^2 on the validation data. As the value for alpha increases, the R^2 increases and converges at a point.
4. We can do this process in a much simpler fashion by utilizing Grid Serarch:

![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/6d041f83-d0ed-4c19-8c51-7dc6f0f8e09c)

5. Now we test our model on the test data:
  
![image](https://github.com/KeninRamirez/NFL-23-24-Stats/assets/135486374/64f372c7-409b-4886-b500-be39c726fa50)
  
6. Our R^2 for the Ridge Regression Model is .79798, meaning 79.798% of the variation of wins is explained by this model































