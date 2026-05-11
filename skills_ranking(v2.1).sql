-- v2.1 : THIS VERSION IS A DIRECT QUERY, JUST EXTRACT, AND SHOW RESULTS
/* 
    What are the Top 10 most requested skills specifically for "Data Analyst"
roles where the employee can work from home?
    How much cash are we talking about? For jobs requiring each of those
top 10 skills, what is the average yearly salary being offered?
*/
    SELECT
        sd.skills,
        ROUND(AVG(jpc.salary_year_avg)) AS average,
        COUNT(jpc.job_id) AS total_jobs
    FROM
        job_postings_fact AS jpc
        INNER JOIN skills_job_dim AS sjd
            ON sjd.job_id = jpc.job_id
        INNER JOIN skills_dim AS sd
            ON sd.skill_id = sjd.skill_id
    WHERE job_title_short = 'Data Analyst'
        AND salary_year_avg IS NOT NULL
        AND job_work_from_home IS TRUE
    GROUP BY
        skills
    ORDER BY
        total_jobs DESC
    LIMIT 10 