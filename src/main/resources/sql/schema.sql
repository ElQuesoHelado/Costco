DROP TABLE IF EXISTS "producto" CASCADE;                                            
DROP TABLE IF EXISTS "orden" CASCADE;   
DROP TABLE IF EXISTS "favorito" CASCADE;
DROP TABLE IF EXISTS "producto_orden_detalle" CASCADE;
DROP TABLE IF EXISTS "usuario" CASCADE;

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


CREATE TABLE IF NOT EXISTS "orden" (
	"numero" bigint GENERATED ALWAYS AS IDENTITY NOT NULL UNIQUE,
	"direccion" text NOT NULL,
	"estado" text NOT NULL,
	"fecha_envio" date NOT NULL,
	"fecha_entrega" date,
	"id_usuario" bigint NOT NULL,
	PRIMARY KEY ("numero")
);

CREATE TABLE IF NOT EXISTS "favorito" (
	"id_usuario" bigint NOT NULL,
	"codigo_producto" bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS "producto_orden_detalle" (
	"codigo_producto" bigint NOT NULL,
	"numero_orden" bigint NOT NULL,
	"cantidad" bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS "usuario" (
  "id" bigint GENERATED ALWAYS AS IDENTITY NOT NULL UNIQUE,
	"email" text NOT NULL UNIQUE,
	"password" text NOT NULL,
	"metodo_pago" bigint,
	PRIMARY KEY ("id")
);


ALTER TABLE "orden" ADD CONSTRAINT "orden_fk5" FOREIGN KEY ("id_usuario") REFERENCES "usuario"("id");
ALTER TABLE "favorito" ADD CONSTRAINT "favorito_fk0" FOREIGN KEY ("id_usuario") REFERENCES "usuario"("id");

ALTER TABLE "favorito" ADD CONSTRAINT "favorito_fk1" FOREIGN KEY ("codigo_producto") REFERENCES "producto"("codigo");
ALTER TABLE "producto_orden_detalle" ADD CONSTRAINT "producto_orden_detalle_fk0" FOREIGN KEY ("codigo_producto") REFERENCES "producto"("codigo");

ALTER TABLE "producto_orden_detalle" ADD CONSTRAINT "producto_orden_detalle_fk1" FOREIGN KEY ("numero_orden") REFERENCES "orden"("numero");
