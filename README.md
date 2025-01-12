# 💼 Data Science Job Salary Analysis

This project analyzes data science job salaries to uncover trends, predict compensation, and provide visual insights to assist job seekers and employers in making informed decisions.

## 📑 Table of Contents

- [Project Overview](#project-overview)
- [Data Description](#data-description)
- [Methodology](#methodology)
  - [Data Analysis](#data-analysis)
  - [Salary Prediction Model](#salary-prediction-model)
  - [Data Visualization](#data-visualization)
- [Results](#results)
- [Files in Repository](#files-in-repository)
- [How to Use](#how-to-use)
- [Conclusion](#conclusion)
- [References](#references)

## 📈 Project Overview

The objective of this project is to analyze data science job salaries to identify key trends, predict compensation based on various factors, and provide visual insights to support data-driven decision-making.

## 🗂️ Data Description

The dataset includes the following columns:

- **work_year**: Year of the reported salary.
- **experience_level**: Experience level in the job role (e.g., Junior, Mid-level, Senior).
- **employment_type**: Type of employment (e.g., Full-time, Part-time).
- **job_title**: Job title (e.g., Data Scientist, Data Analyst).
- **salary**: Annual salary in respective currency.
- **salary_currency**: Currency of the salary.
- **salary_in_usd**: Annual salary in USD.
- **employee_residence**: Country of residence of the employee.
- **remote_ratio**: Percentage indicating the amount of remote work (e.g., 0, 50, 100).
- **company_location**: Country where the employer is located.
- **company_size**: Size of the company (e.g., Small, Medium, Large).

## 🛠️ Methodology

### 🔍 Data Analysis

- **Tools Used**: SQL, Pandas
- **Process**:
  - Data cleaning and preprocessing to handle missing values and ensure consistency.
  - Exploratory data analysis to understand salary distribution across different roles, experience levels, and locations.
  - Identification of key factors influencing salary variations.

### 🤖 Salary Prediction Model

- **Model Used**: Stacked Regression Model (LGBM + XGB + GB)
- **Process**:
  - Engineered the feature `residence_salary_ratio`, boosting the model’s performance from an R² of 0.40-0.50 to 0.97 for precise salary predictions.

### 📊 Data Visualization

- **Tool Used**: Tableau
- **Dashboard Link**: [Link](https://public.tableau.com/app/profile/neilansh.chauhan/viz/JobMarketAnalysis_17366805021800/Dashboard1?publish=yes)
- **Process**:
  - Created interactive dashboards to visualize salary trends across different dimensions such as job title, experience level, and location.
  - Enabled stakeholders to interact with data for informed decision-making.

## 🏆 Results

- **Data Analysis**:
  - Identified salary trends based on job titles, experience levels, and geographical locations.
  - Recognized the impact of remote work and company size on compensation.
- **Salary Prediction**:
  - Developed a highly accurate model for predicting salaries based on various factors.
- **Data Visualization**:
  - Provided clear visual insights into salary distributions, aiding job seekers and employers in understanding market standards.

## 📂 Files in Repository

- `data-science-job-salaries-analysis.ipynb`: Jupyter Notebook containing Python code for data analysis and model building.
- `jobs_sql.sql`: SQL queries used for data analysis.
- `jobs_csv.csv`: Dataset in CSV format.
- `jobs_excel.xlsx`: Dataset in Excel format.
- `Job Market Analysis.twbx`: Tableau workbook for data visualization.

## 🖥️ How to Use

1. **Data Analysis**:
   - Execute the Jupyter Notebook `data-science-job-salaries-analysis.ipynb` to perform data analysis and build the prediction model.
   - Run the SQL queries in `jobs_sql.sql` using a SQL-compatible database for additional analysis.
2. **Data Visualization**:
   - Open `Job Market Analysis.twbx` in Tableau to interact with the dashboard.
3. **Dataset**:
   - The datasets `jobs_csv.csv` and `jobs_excel.xlsx` are provided for reference and further analysis.

## 📝 Conclusion

This project offers a comprehensive analysis of data science job salaries, providing valuable insights through data analysis, predictive modeling, and visualization. The findings can assist both job seekers and employers in making informed decisions regarding compensation in the data science field.

## 📚 References

- [Data Science Salaries - Kaggle](https://www.kaggle.com/code/thabresh/data-science-salaries)
