-- Table: public.Salaries

-- DROP TABLE IF EXISTS public."Salaries";

CREATE TABLE IF NOT EXISTS public."Salaries"
(
    emp_no integer NOT NULL,
    salary money NOT NULL,
    CONSTRAINT emp_no PRIMARY KEY (emp_no),
    CONSTRAINT emp_number FOREIGN KEY (emp_no)
        REFERENCES public."Employees" (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Salaries"
    OWNER to postgres;