ALTER TABLE "imagen" DROP CONSTRAINT IF EXISTS "imagen_fk0";
DROP TABLE IF EXISTS "producto" CASCADE;
DROP TABLE IF EXISTS "imagen" CASCADE;

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
	PRIMARY KEY ("codigo")
);

CREATE TABLE IF NOT EXISTS "imagen" (
	"codigo_producto" bigint NOT NULL,
	"path" text NOT NULL
);


ALTER TABLE "imagen" ADD CONSTRAINT "imagen_fk0" FOREIGN KEY ("codigo_producto") REFERENCES "producto"("codigo");
