-- Table: public.Departments

-- DROP TABLE IF EXISTS public."Departments";

CREATE TABLE IF NOT EXISTS public."Departments"
(
    dept_no character varying(50) COLLATE pg_catalog."default" NOT NULL,
    dept_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Departments_pkey" PRIMARY KEY (dept_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Departments"
    OWNER to postgres;