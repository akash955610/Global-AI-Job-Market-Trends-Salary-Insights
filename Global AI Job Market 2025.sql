CREATE DATABASE Global_AI_Job;
USE Global_AI_Job;

CREATE TABLE AI_Job_Trend (
  Job_id VARCHAR(10) PRIMARY KEY,
  Job_title VARCHAR(50),
  Salary_usd FLOAT,
  Salary_currency CHAR(5),
  Experience_level CHAR(5),
  Employment_type CHAR(5),
  Company_location VARCHAR(100),
  Company_size CHAR(5),
  Employee_residence VARCHAR(50),
  Remote_ratio INT,
  Required_skills TEXT,
  Education_required VARCHAR(50),
  Years_experience INT,
  Industry VARCHAR(50),
  Posting_date DATE,
  Application_deadline DATE,
  Job_description_length INT,
  Benefits_score FLOAT,
  Company_name VARCHAR(100)
);

SELECT * FROM AI_Job_Trend;

SELECT * FROM AI_Job_Trend LIMIT 10;

SELECT Job_id, Job_title, Company_name, Salary_usd
FROM AI_Job_Trend
WHERE Salary_usd > 80000;

SELECT Job_id, Job_title, Salary_usd, Company_name
FROM AI_Job_Trend
ORDER BY Salary_usd DESC
LIMIT 3;

SELECT Company_location, AVG(Salary_usd) AS Avg_Salary
FROM AI_Job_Trend
GROUP BY Company_location;

SELECT Experience_level, COUNT(*) AS Num_Jobs
FROM AI_Job_Trend
GROUP BY Experience_level;

SELECT * FROM AI_Job_Trend
WHERE Salary_usd > (
  SELECT AVG(Salary_usd) FROM AI_Job_Trend);

SELECT Experience_level, AVG(Salary_usd) AS Avg_salary
FROM AI_Job_Trend
WHERE Experience_level = 'SE'
GROUP BY Experience_level;

SELECT * FROM AI_Job_Trend
WHERE Job_title LIKE '%Engineer%';

SELECT Company_name, COUNT(*) AS Num_jobs
FROM AI_Job_Trend
WHERE Salary_currency = 'EUR'
GROUP BY Company_name;

SELECT Job_title, Salary_usd
FROM AI_Job_Trend;

SELECT Industry, AVG(Salary_usd) AS Avg_Salary
FROM AI_Job_Trend
GROUP BY Industry
HAVING AVG(Salary_usd) >= 80000;

SELECT Company_location,
	COUNT(*) AS job_count,
	AVG(Salary_usd) AS avg_salary
FROM AI_Job_Trend
GROUP BY Company_location WITH ROLLUP;

SELECT * FROM AI_Job_Trend
WHERE Company_location IN ('India', 'China');

SELECT DISTINCT Industry
FROM AI_Job_Trend;