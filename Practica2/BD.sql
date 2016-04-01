CREATE DATABASE "Practica1"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'es_MX.UTF-8'
       LC_CTYPE = 'es_MX.UTF-8'
       CONNECTION LIMIT = -1;


CREATE TABLE cuentas
(
  "Identificador" "char"[] NOT NULL,
  "Contasenia" "char"[] NOT NULL,
  CONSTRAINT "Identificador_PK" PRIMARY KEY ("Identificador")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cuentas
  OWNER TO postgres;

  CREATE TABLE usuarios
(
  "Nombre" "char"[] NOT NULL,
  "Apellido_Pat" "char"[] NOT NULL,
  "Apellido_Mat" "char"[] NOT NULL,
  "Edad" integer NOT NULL,
  "País" "char"[] NOT NULL,
  email "char"[] NOT NULL,
  "Identificador_Cuentas" "char"[] NOT NULL,
  CONSTRAINT "email_PK" PRIMARY KEY (email),
  CONSTRAINT "Identificador_FK_Cuentas" FOREIGN KEY ("Identificador_Cuentas")
      REFERENCES cuentas ("Identificador") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE usuarios
  OWNER TO postgres;
