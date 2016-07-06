CREATE TABLE administrador
(
  senha character varying(9) NOT NULL,
  email character varying(100) NOT NULL,
  login character varying(30) NOT NULL,
  CONSTRAINT administrador_pkey PRIMARY KEY (login)
);

CREATE TABLE desporto
(
  nome_desporto character varying(50) NOT NULL,
  desc_desporto character varying(500) NOT NULL,
  id_desporto bigint NOT NULL,
  valor_desporto character varying(50) NOT NULL,
  CONSTRAINT desporto_pkey PRIMARY KEY (id_desporto)
);

CREATE TABLE equipe
(
  foto character varying(100) NOT NULL,
  simbolo character varying(100) NOT NULL,
  integrante character varying(5000) NOT NULL,
  cor character varying(50) NOT NULL,
  conselheiro character varying(100) NOT NULL,
  mascote character varying(100) NOT NULL,
  nome_equipe character varying(100) NOT NULL,
  id_equipe bigint NOT NULL,
  CONSTRAINT equipe_pkey PRIMARY KEY (id_equipe)
);

CREATE TABLE pontuacao_desporto
(
  id_pdesporto bigint NOT NULL,
  ponto_pdesporto character varying(50) NOT NULL,
  id_desporto bigint,
  id_equipe bigint,
  CONSTRAINT pontuacao_desporto_pkey PRIMARY KEY (id_pdesporto),
  CONSTRAINT pontuacao_desporto_id_desporto_fkey FOREIGN KEY (id_desporto)
      REFERENCES desporto (id_desporto) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE pontuacao_tarefa
(
  ponto_ptarefa character varying(50) NOT NULL,
  id_ptarefa bigint NOT NULL,
  id_tarefa bigint,
  id_equipe bigint,
  CONSTRAINT pontuacao_tarefa_pkey PRIMARY KEY (id_ptarefa)
);

CREATE TABLE tarefa
(
  nome_tarefa character varying(50) NOT NULL,
  id_tarefa bigint NOT NULL,
  desc_tarefa character varying(500) NOT NULL,
  valor_tarefa character varying(50) NOT NULL,
  CONSTRAINT tarefa_pkey PRIMARY KEY (id_tarefa)
);
