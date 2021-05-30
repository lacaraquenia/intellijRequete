-- public.si definition

-- Drop tables

DROP TABLE public.env_si ;
DROP TABLE public.env;
DROP TABLE public.si;

CREATE TABLE public.si (
	id_si int4 NOT NULL,
	nom_si varchar(20) NOT NULL,
	CONSTRAINT si_pkey PRIMARY KEY (id_si)
);

-- Create tables
CREATE TABLE public.env (
	id_env int4 NOT NULL,
	nom_env varchar(150) NOT NULL,
	lib_env varchar(300) NOT NULL,
	flag_anonym bool NULL,
	flag_isObsolete bool NULL,
	CONSTRAINT environement_pkey PRIMARY KEY (id_env)
);




CREATE TABLE public.env_si (
	id_si_env int4 NOT NULL,
	id_si int4 NOT NULL,
	id_env int4 NOT NULL,
	"instance" varchar(20) NULL,
	flag_actif bool NULL,
	CONSTRAINT env_si_pkey PRIMARY KEY (id_si_env)
);

--Foreign keys
--
ALTER TABLE public.env_si ADD CONSTRAINT env_si__env_fk FOREIGN KEY (id_env) REFERENCES public.env(id_env);
ALTER TABLE public.env_si ADD CONSTRAINT env_si__si_fk FOREIGN KEY (id_si) REFERENCES public.si(id_si);