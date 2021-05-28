--------------------------------------------------
--INSERCIÓN DE DATOS EN LAS TABLAS
--------------------------------------------------
-- IMPORTACIÓN DE CSV EN TABLA MASTER QUE ALOJA TODA LA DATA
import c:/sqlite/software_developer_united_states_1971_20191023_1.csv tabla_master
--------------------------------------------------
INSERT INTO JOB_POSTING(uniq_id,
crawl_timestamp,
url,
job_title,
category,
post_date,
job_type,
job_description,
salary_offered,
contact_email,
contact_phone_number,
job_board,
inferred_city)
SELECT uniq_id,
crawl_timestamp,
url,
job_title,
category,
post_date,
job_type,
job_description,
salary_offered,
contact_email,
contact_phone_number,
job_board,
inferred_city FROM tabla_master;
--------------------------------------------------
INSERT INTO CITY(city,inferred_state)
SELECT DISTINCT city,inferred_state FROM tabla_master;
--------------------------------------------------
INSERT INTO JOB_BOARD(job_board,geo)
SELECT DISTINCT job_board,geo FROM tabla_master WHERE geo IS NOT NULL;
--------------------------------------------------
INSERT INTO STATE(state,country,inferred_state)
SELECT DISTINCT state,country,inferred_state FROM tabla_master;
--------------------------------------------------
INSERT INTO COMPANY(company_name,city)
SELECT DISTINCT company_name,city FROM tabla_master;