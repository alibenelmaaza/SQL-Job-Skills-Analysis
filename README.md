# Data Analyst Job Market Analysis (SQL MiniProject)

## 📊 Overview
This project focuses on analyzing the job market for **Data Analysts**, specifically targeting **remote** opportunities. The goal is to identify the most in-demand skills and understand the salary trends associated with these roles to help entry-level analysts focus on what matters.

## 🔍 Business Questions Addressed
* What are the **top 10 most requested skills** for remote Data Analyst roles?
* What is the **average yearly salary** for jobs requiring these specific skills?
* How does the location (Remote vs Onsite) impact the job availability?

## 🛠️ Tools & Technical Skills
* **SQL:** Advanced querying, Joins, and Aggregations.
* **CTEs (Common Table Expressions):** Used to organize complex logic and improve readability.
* **Data Cleaning:** Categorizing locations and handling null salary values.
* **PostgreSQL:** The primary database engine used for analysis.

## 📈 Key Insights
1. **SQL & Excel:** Remain the fundamental "must-have" skills for any Junior Data Analyst.
2. **Salary Trends:** Skills like **Python** and **Power BI** often command higher average salaries in remote settings.
3. **Market Demand:** There is a significant volume of job postings for "Junior" roles that emphasize academic background and personal projects over years of experience.

## 📂 Project Structure & Logic Evolution
* `skills_ranking(v1.0).sql`: **v1.0: Initial Logic (Incorrect Logic)**
  - *The Issue:* This version had a logical flaw in the Join process, leading to duplicated salary data across all skills. It showed the same average for everything, which was data-inaccurate.
  - *Lesson:* Always verify the output against the business context.

* `skills_ranking(v2.0).sql`: **v2.0: Logic Fix & Template Creation**
  - *The Fix:* Corrected the Join and added proper `GROUP BY` and `AVG` functions to get accurate salaries per skill. 
  - *Improvement:* Created a structured template for better scalability.

* `skills_ranking(v2.1).sql`: **v2.1: Optimization & Professional Clean-up**
  - *The Final Step:* Refactored the code for **Performance**. Removed unnecessary CTEs to make it "Server-Friendly" and faster.
  - *Result:* High-efficiency code that provides 100% accurate market insights.

---
**Note:** This project is part of my professional portfolio to demonstrate my ability to extract actionable insights from raw data using SQL.
