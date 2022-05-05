-- Table: public.Dept_Emp

-- DROP TABLE IF EXISTS public."Dept_Emp";

CREATE TABLE IF NOT EXISTS public."Dept_Emp"
(
    emp_no integer NOT NULL,
    dept_no character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Dept_Emp_pkey" PRIMARY KEY (emp_no),
    CONSTRAINT dept_no FOREIGN KEY (dept_no)
        REFERENCES public."Departments" (dept_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT emp_no FOREIGN KEY (emp_no)
        REFERENCES public."Employees" (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Dept_Emp"
    OWNER to postgres;