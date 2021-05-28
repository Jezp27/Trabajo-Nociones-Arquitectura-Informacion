--------------------------------------------------
--CREACIÓN DE TABLAS
--------------------------------------------------
CREATE TABLE "JOB_POSTING" (
	"uniq_id"	TEXT
	"crawl_timestamp"	TEXT,
	"url"	TEXT,
	"job_title"	TEXT,
	"category"	TEXT,
	"post_date"	TEXT,
	"job_type"	TEXT,
	"job_description"	TEXT,
	"salary_offered"	NUMERIC,
	"contact_email"	TEXT,
	"contact_phone_number"	TEXT,
	"job_board"	TEXT,	
	"inferred_city"	TEXT
)
--------------------------------------------------
CREATE TABLE "CITY" (
	"city"	TEXT,
	"inferred_state"	TEXT,
)
--------------------------------------------------
CREATE TABLE "JOB_BOARD" (
	"job_board"	TEXT,
	"geo"	TEXT,
)
--------------------------------------------------
CREATE TABLE "STATE" (
	"state"	TEXT,
	"country"	TEXT,
	"inferred_state"	TEXT,
)
--------------------------------------------------
CREATE TABLE "COMPANY" (
	"company_name"	TEXT,
	"city"	TEXT,
)
--------------------------------------------------