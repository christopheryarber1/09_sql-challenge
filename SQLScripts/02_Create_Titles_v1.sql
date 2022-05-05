-- Table: public.Titles

-- DROP TABLE IF EXISTS public."Titles";

CREATE TABLE IF NOT EXISTS public."Titles"
(
    title_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    title character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT title_id PRIMARY KEY (title_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Titles"
    OWNER to postgres;