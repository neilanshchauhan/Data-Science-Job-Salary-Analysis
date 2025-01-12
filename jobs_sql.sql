USE ds_job;

SELECT * FROM jobs;

## Business Problems

-- Q1. How many different job titles are there in the dataset?
SELECT COUNT(DISTINCT job_title) AS Num_Job_Titles
FROM jobs;

-- Q2. Salary Analysis by Job Title
SELECT job_title, ROUND(AVG(salary_in_usd),2) AS avg_salary_usd
FROM jobs
GROUP BY job_title;

-- Q3. Top Paying Companies (based on Location)
SELECT company_location, ROUND(AVG(salary_in_usd),2) AS avg_salary
FROM jobs
GROUP BY company_location
ORDER BY avg_salary DESC
LIMIT 5;

-- Q4.Remote Work vs Salary
SELECT remote_ratio, ROUND(AVG(salary_in_usd),2) AS avg_salary
FROM jobs
GROUP BY remote_ratio;

-- Q5. Experience Level Impact on Salaries
SELECT experience_level, ROUND(AVG(salary_in_usd),2) AS avg_salary
FROM jobs
GROUP BY experience_level
ORDER BY avg_salary DESC;

-- Q6. Company Size Salary Comparison
SELECT company_size, ROUND(AVG(salary_in_usd),2) AS avg_salary
FROM jobs
GROUP BY company_size
ORDER BY avg_salary DESC;

-- Q7. Growth in Salaries Over Years
SELECT work_year, ROUND(AVG(salary_in_usd),2) AS avg_salary
FROM jobs
GROUP BY work_year
ORDER BY avg_salary DESC;

-- Q8. Remote Ratio by Company Size
SELECT company_size, AVG(remote_ratio) AS avg_remote_ratio
FROM jobs
GROUP BY company_size
ORDER BY avg_remote_ratio DESC;

-- Q9. Top 5 Highest Paid Job Titles
SELECT job_title, AVG(salary_in_usd) AS avg_salary
FROM jobs
GROUP BY job_title
ORDER BY avg_salary DESC
LIMIT 5;

-- Q10. Salary Distribution for Data Scientists
SELECT MIN(salary_in_usd) AS min_salary, 
       MAX(salary_in_usd) AS max_salary, 
       ROUND(AVG(salary_in_usd),2) AS avg_salary, 
       ROUND(STDDEV(salary_in_usd),2) AS salary_stddev
FROM jobs
WHERE job_title = 'Data Scientist';