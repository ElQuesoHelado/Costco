DROP TABLE IF EXISTS "producto" CASCADE;

CREATE TABLE IF NOT EXISTS "producto" (
	"codigo" bigint GENERATED ALWAYS AS IDENTITY NOT NULL UNIQUE,
	"nombre" text NOT NULL,
  "categoria" text NOT NULL,
	"subcategoria" text,
	"subsubcategoria" text,
  "marca" text NOT NULL,
  "peso" text NOT NULL,
  "descripcion" text NOT NULL,
	"precio" float NOT NULL,
  "imgpath1" text NOT NULL,
  "imgpath2" text,
  "imgpath3" text,
	PRIMARY KEY ("codigo")
);
