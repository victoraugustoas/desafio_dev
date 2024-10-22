CREATE TABLE "cliente" (
  "id" integer PRIMARY KEY,
  "name" varchar(255),
  "estado_residencia" integer
);

CREATE TABLE "telefone" (
  "id" integer PRIMARY KEY,
  "telefone" varchar(14),
  "tipo" integer
);

CREATE TABLE "telefone_tipo" (
  "id" integer PRIMARY KEY,
  "tipo" varchar(255)
);

CREATE TABLE "unidade_federativa" (
  "id" integer PRIMARY KEY,
  "name" varchar(255),
  "sigla" char(2)
);

ALTER TABLE "cliente" ADD FOREIGN KEY ("estado_residencia") REFERENCES "unidade_federativa" ("id");

ALTER TABLE "telefone" ADD FOREIGN KEY ("tipo") REFERENCES "telefone_tipo" ("id");

CREATE TABLE "cliente_telefone" (
  "cliente_id" integer,
  "telefone_id" integer,
  PRIMARY KEY ("cliente_id", "telefone_id")
);

ALTER TABLE "cliente_telefone" ADD FOREIGN KEY ("cliente_id") REFERENCES "cliente" ("id");

ALTER TABLE "cliente_telefone" ADD FOREIGN KEY ("telefone_id") REFERENCES "telefone" ("id");


