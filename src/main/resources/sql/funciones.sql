DROP FUNCTION IF EXISTS get_ordenes(bigint);

CREATE
OR REPLACE FUNCTION get_ordenes(id_ bigint) RETURNS TABLE (
  numero_orden bigint,
  fecha_envio date,
  fecha_entrega date,
  estado text,
  direccion text,
  codigo_producto bigint,
  producto_nombre text,
  cantidad bigint,
  precio float,
  total float,
  imgpath1 text
) AS $$
SELECT O.numero,
       O.fecha_envio,
       O.fecha_entrega,
       O.estado,
       O.direccion,
       P.codigo,
       P.nombre,
       DET.cantidad,
       P.precio,
       (DET.cantidad * P.precio),
       P.imgpath1
FROM "orden" O,
     "producto_orden_detalle" DET,
     "producto" P
WHERE O.id_usuario = id_
  AND O.numero = DET.numero_orden
  AND DET.codigo_producto = P.codigo;
$$
LANGUAGE SQL STABLE PARALLEL SAFE;

DROP FUNCTION IF EXISTS get_direcciones(bigint);

CREATE
OR REPLACE FUNCTION get_direcciones(id_ bigint) RETURNS TABLE (
  direccion text
)AS $$
SELECT DISTINCT direccion
FROM orden
WHERE id_usuario = id_;
$$
LANGUAGE SQL STABLE PARALLEL SAFE;

DROP FUNCTION IF EXISTS get_favoritos(bigint);

CREATE
OR REPLACE FUNCTION get_favoritos(id_ bigint) RETURNS TABLE (
  codigo_producto bigint,
  producto_nombre text,
  imgpath1 text
)AS $$
SELECT P.codigo,
       P.nombre,
       P.imgpath1
FROM usuario U,
     favorito F,
     producto P
WHERE U.id = id_
  AND F.id_usuario = id_
  AND P.codigo = F.codigo_producto;
$$
LANGUAGE SQL STABLE PARALLEL SAFE;



