--------------------------------------------------
--ANÁLITICA DESCRIPTIVA
--------------------------------------------------
SELECT category,COUNT(uniq_id) AS AMOUNT
FROM JOB_POSTING
GROUP BY (category)
ORDER BY AMOUNT DESC;
-------------------------------------------------
SELECT job_type,COUNT(uniq_id) AS AMOUNT
FROM JOB_POSTING 
GROUP BY (job_type)
ORDER BY AMOUNT DESC;
-------------------------------------------------
SELECT JB.job_board,JB.geo,COUNT(uniq_id) AS AMOUNT 
FROM JOB_POSTING JP 
LEFT JOIN JOB_BOARD JB ON JP.job_board=JB.job_board 
GROUP BY (JB.job_board) 
ORDER BY AMOUNT DESC;
-------------------------------------------------
SELECT job_title,COUNT(uniq_id) AS AMOUNT
FROM JOB_POSTING 
GROUP BY (job_title) 
ORDER BY (AMOUNT) DESC 
LIMIT 10;
-------------------------------------------------
SELECT CP.company_name,ifnull(CT.city,'Remote') AS COMPANY_CITY,
COUNT(DISTINCT(uniq_id)) AS AMOUNT 
FROM JOB_POSTING JP 
LEFT JOIN COMPANY CP ON JP.company_name=CP.company_name 
LEFT JOIN CITY CT ON CP.city=CT.city
GROUP BY (CP.company_name) 
ORDER BY AMOUNT DESC;
-------------------------------------------------
SELECT MIN(strftime('%Y %m %d',post_date)) AS DATE_FIRST_OFFERT FROM JOB_POSTING;
-------------------------------------------------
SELECT MAX(strftime('%Y %m %d',post_date)) AS DATE_LAST_OFFERT FROM JOB_POSTING;
-------------------------------------------------
SELECT strftime('%Y',post_date) AS YEAR, strftime('%m',post_date) AS MONTH, COUNT(uniq_id) AS AMOUNT 
FROM JOB_POSTING 
GROUP BY YEAR,MONTH
ORDER BY AMOUNT DESC;
-------------------------------------------------