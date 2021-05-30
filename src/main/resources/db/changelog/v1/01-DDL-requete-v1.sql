-- Table: public.requete

--DROP TABLE nso.requete;

CREATE TABLE nso.requete
(
    id serial,
    nom_requete character varying(200) COLLATE pg_catalog."default" NOT NULL,
    desc_requete character varying(2500) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_requete PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE nso.requete
    OWNER to postgres;
