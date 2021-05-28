--------------------------------------------------
--CREACIÓN DE TABLAS
--------------------------------------------------
--TABLA MASTER DONDE SE ALMACENA LA INFORMACIÓN INCIAL DEL CSV A MIGRAR EN LAS OTRAS TABLAS
CREATE TABLE "tabla_master" (
	"crawl_timestamp"	TEXT,
	"url"	TEXT,
	"job_title"	TEXT,
	"category"	TEXT,
	"company_name"	TEXT,
	"city"	TEXT,
	"state"	TEXT,
	"country"	TEXT,
	"inferred_city"	TEXT,
	"inferred_state"	TEXT,
	"inferred_country"	TEXT,
	"post_date"	TEXT,
	"job_description"	TEXT,
	"job_type"	TEXT,
	"salary_offered"	NUMERIC,
	"job_board"	TEXT,
	"geo"	TEXT,
	"cursor"	REAL,
	"contact_email"	TEXT,
	"contact_phone_number"	TEXT,
	"uniq_id"	TEXT
)
-------------------------------------------------
CREATE TABLE "JOB_POSTING" (
	"uniq_id"	TEXT,
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
	"inferred_city"	TEXT,
	"company_name" TEXT
)
--------------------------------------------------
CREATE TABLE "CITY" (
	"city"	TEXT,
	"inferred_state"	TEXT
)
--------------------------------------------------
CREATE TABLE "JOB_BOARD" (
	"job_board"	TEXT,
	"geo"	TEXT
)
--------------------------------------------------
CREATE TABLE "STATE" (
	"state"	TEXT,
	"country"	TEXT,
	"inferred_state"	TEXT
)
--------------------------------------------------
CREATE TABLE "COMPANY" (
	"company_name"	TEXT,
	"city"	TEXT
)
--------------------------------------------------