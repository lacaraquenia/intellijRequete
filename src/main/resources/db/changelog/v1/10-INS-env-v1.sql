--table SI
INSERT INTO public.si (id_si, nom_si) VALUES(1, 'SIPI');
INSERT INTO public.si (id_si, nom_si) VALUES(2, 'Siebel');

--table env: api RED
INSERT INTO public.env (id_env, nom_env, lib_env, flag_isobsolete, flag_anonym) VALUES(1, 'TCOR','Environnement test correctif',false, false);
INSERT INTO public.env (id_env, nom_env, lib_env, flag_isobsolete, flag_anonym) VALUES(2, 'TDV2','environnement Test DV2',false, false);

--table Env-SI
INSERT INTO public.env_si (id_si_env, id_si, id_env, "instance", flag_actif) VALUES(1, 1, 1, 'ETMOECOR', true);
INSERT INTO public.env_si (id_si_env, id_si, id_env, "instance", flag_actif) VALUES(2, 2, 1, 'TCGRSS', true);