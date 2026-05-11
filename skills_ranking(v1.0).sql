-- v1.0 :
/* 
    What are the Top 10 most requested skills specifically for "Data Analyst"
roles where the employee can work from home?
    How much cash are we talking about? For jobs requiring each of those
top 10 skills, what is the average yearly salary being offered?
*/
WITH re_dajbs AS ( -- CTEs starts :
    SELECT 
        jpc.job_title_short, sjd.job_id, sd.skills,
        jpc.salary_year_avg, jpc.job_location,
        CASE
            WHEN jpc.job_location = 'Anywhere' THEN 'Remote'
            ELSE 'Onsite'
        END AS location
    FROM
        job_postings_fact AS jpc
        INNER JOIN skills_job_dim AS sjd
            ON sjd.job_id = jpc.job_id
        INNER JOIN skills_dim AS sd
            ON sd.skill_id = sjd.skill_id
    WHERE job_work_from_home IS TRUE
        AND job_title_short = 'Data Analyst'
        AND salary_year_avg IS NOT NULL
) -- CTEs finish here.

    SELECT
        job_title_short, skills,
        salary_year_avg, location
    FROM
        re_dajbs
    ORDER BY
        salary_year_avg DESC
    LIMIT 10   