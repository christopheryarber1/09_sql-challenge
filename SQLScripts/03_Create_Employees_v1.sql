-- Table: public.Employees

-- DROP TABLE IF EXISTS public."Employees";

CREATE TABLE IF NOT EXISTS public."Employees"
(
    emp_no integer NOT NULL,
    emp_title_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    sex character(1) COLLATE pg_catalog."default" NOT NULL,
    hire_date date NOT NULL,
    CONSTRAINT "Employees_pkey" PRIMARY KEY (emp_no),
    CONSTRAINT title_id FOREIGN KEY (emp_title_id)
        REFERENCES public."Titles" (title_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Employees"
    OWNER to postgres;