# Session-Based-Purchase-Likelihood

## Project Overview
This project analyzes user session data from an e-commerce website to predict **purchase intent**. By examining visitor behavior, page interactions, and session characteristics, we aim to identify which sessions are most likely to result in a purchase.

## Objective
- Predict whether a user will make a purchase during a session.
- Understand key factors influencing purchase decisions.
- Demonstrate applied skills in **data cleaning, feature engineering, modeling, and visualization**.

## Dataset
- Source: Online Shoppers Purchasing Intention Dataset (Kaggle)
- Rows: ~12,000 sessions  
- Columns: 18 attributes including page visit counts, durations, bounce rates, exit rates, traffic type, visitor type, and purchase outcome (`Revenue`).  
- Dataset size is manageable while providing meaningful patterns for analysis.

## Key Steps
1. **Data Cleaning:** Handle missing values, remove duplicates, and convert categorical/boolean columns.  
2. **Feature Engineering:**  
   - Engagement Score: Total time spent across all page categories.  
   - Session Duration Buckets: Short / Medium / Long sessions.  
3. **Data Transformation:**  
   - One-hot encoding for categorical features.  
   - Min-Max scaling for numeric attributes.  
4. **Exploratory Data Analysis (EDA):**  
   - Purchase distribution  
   - Correlation of features with purchase outcome  
5. **Modeling:**  
   - Logistic Regression to predict purchase likelihood  
   - Evaluation using Accuracy, ROC-AUC, Confusion Matrix, and Classification Report  
6. **Insights:**  
   - Feature importance highlights which session behaviors drive conversions.  

## Significance of the Project
- **Business Impact:**  
  - Identifying sessions likely to convert helps **optimize marketing spend, personalize recommendations, and improve website design**.  
  - Supports **incremental decision-making** for e-commerce growth.  

- **Skill Demonstration:**  
  - **Data Cleaning & Preprocessing:** Handling missing values, encoding categorical variables, scaling, and feature engineering.  
  - **Analytical Thinking:** Identifying meaningful features like engagement and session duration buckets.  
  - **Modeling & Evaluation:** Logistic regression, performance metrics, and feature importance interpretation.  
  - **Visualization & Reporting:** Clear charts and heatmaps for executive-level insights.  

## Key Learnings
- Understanding how visitor behavior correlates with purchase decisions.  
- The importance of feature engineering in predictive analytics.  
- Translating raw session data into actionable business insights.  

## Project Artifacts
```plaintext
Session-Based-Purchase-Likelihood/
│
├── online_shoppers_intention.csv/             # Dataset
├── Session-Based-Purchase-Likelihood.ipynb/   # Notebook containing code for data preprocessing, modeling, and evaluation
├── Insights_using_SQL.sql                     # SQL to draw useful insights out of data
├── README.md                                  # Project documentation
