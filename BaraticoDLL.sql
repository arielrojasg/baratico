create database supermercado;

use supermercado;

create table puntos_venta(
codigo varchar(10) not null,
provincia varchar(15) not null,
constraint pk_puntos_venta primary key (codigo)
);

create table areas(
id_area int not null,
nombre varchar(20),
constraint pk_area primary key(id_area)
);

create table productos(
id_producto int auto_increment,
PLU varchar(5) default 'NA' unique,
EAN varchar(13) not null,
descripcion varchar(100) not null,
peso double not null,
precio double not null,
id_area_venta int not null,
cod_punto_venta varchar(10) not null,
constraint pk_id_producto primary key(id_producto),
constraint fk_productos_area foreign key (id_area_venta) references areas(id_area),
constraint fk_productos_pv foreign key (cod_punto_venta) references puntos_venta(codigo)
);

DELIMITER $$
CREATE PROCEDURE  pV_insert
(
in pcodigo varchar(20),
in pprovincia varchar(20)
)
BEGIN
insert into puntos_venta(codigo,provincia)values(pcodigo,pprovincia);
END
$$

DELIMITER $$
CREATE PROCEDURE  pV_update
(
in pcodigo varchar(20),
in pprovincia varchar(20)
)
BEGIN
update puntos_venta set provincia=pprovincia where codigo=pcodigo;
END
$$

DELIMITER $$
CREATE PROCEDURE  pV_delete
(
in pcodigo varchar(20)
)
BEGIN
delete from puntos_venta where codigo=pcodigo;
END
$$

DELIMITER $$
CREATE PROCEDURE  area_insert
(
in pid_area int,
in pnombre varchar(20)
)
BEGIN
insert into areas(id_area,nombre) values(pid_area,pnombre);
END
$$

DELIMITER $$
CREATE PROCEDURE  area_update
(
in pid_area int,
in pnombre varchar(20)
)
BEGIN
update areas set nombre=pnombre where id_area=pid_area;
END
$$

DELIMITER $$
CREATE PROCEDURE  area_delete
(
in pid_area int
)
BEGIN
delete from areas  where id_area=pid_area;
END
$$

DELIMITER $$
CREATE PROCEDURE  producto_insertar
(
in pPLU varchar(5),
in pEAN varchar(13),
in pdescripcion varchar(100) ,
in ppeso double ,
in pprecio double ,
in pid_area_venta int ,
in pcod_punto_venta varchar(10) 
)
BEGIN
insert into productos(PLU,EAN,descripcion,peso,precio,id_area_venta,cod_punto_venta) values(pPLU,pEAN,pdescripcion,ppeso,pprecio,pid_area_venta,pcod_punto_venta);
END
$$
DELIMITER $$
CREATE PROCEDURE  producto_update
(
in pid_producto int,
in pPLU varchar(5),
in pEAN varchar(13),
in pdescripcion varchar(100) ,
in ppeso double ,
in pprecio double ,
in pid_area_venta int ,
in pcod_punto_venta varchar(10) 
)
BEGIN
update productos set PLU = pPLU ,EAN=pEAN,descripcion=pdescripcion,peso=ppeso,precio=pprecio,id_area_venta=pid_area_venta,cod_punto_venta=pcod_punto_venta where id_producto=pid_producto;
END
$$

DELIMITER $$
CREATE PROCEDURE  producto_delete
(
in pid_producto int
)
BEGIN
DELETE FROM productos WHERE id_producto = pid_producto; 
END
$$

DELIMITER $$
CREATE PROCEDURE productos_by_area_codigo
(
pid_area int
)
BEGIN
    SELECT *
    FROM productos
    where id_area_venta=pid_area;
END
$$

DELIMITER $$
CREATE PROCEDURE productos_by_area_nombre
(
pnombre varchar(20)
)
BEGIN
    SELECT *
    FROM productos,areas
    where areas.nombre = pnombre AND
    areas.id_area = productos.id_area_venta ;
END
$$

DELIMITER $$
CREATE PROCEDURE productos_by_pv_id
(
pcod_pv varchar(20)
)
BEGIN
    SELECT *
    FROM productos
    where cod_punto_venta=pcod_pv;
END
$$

DELIMITER $$
CREATE PROCEDURE productos_by_pv_provincia
(
pprovincia varchar(20)
)
BEGIN
    SELECT *
    FROM productos,puntos_venta
    where puntos_venta.provincia = pprovincia AND
    puntos_venta.id_area = productos.cod_punto_venta;
END
$$

DELIMITER $$
CREATE PROCEDURE verAreas()
BEGIN
    SELECT *
    FROM areas;
END
$$

DELIMITER $$
CREATE PROCEDURE verPuntosVenta()
BEGIN
    SELECT *
    FROM puntos_venta;
END
$$

DELIMITER $$
CREATE PROCEDURE verProductos()
BEGIN
    SELECT *
    FROM productos;
END
$$

DELIMITER $$
CREATE PROCEDURE productos_by_area_and_puntoVenta
(
pid_area int,
pid_pv varchar(20)
)
BEGIN
    SELECT *
    FROM productos
    where id_area_venta=pid_area
    AND cod_punto_venta=pid_pv;
END
$$

CREATE VIEW vista_productos_SJ AS SELECT * FROM productos where cod_punto_venta = 'SJ001';
CREATE VIEW vista_productos_ALA AS SELECT * FROM productos where cod_punto_venta = 'AL002';
CREATE VIEW vista_productos_CAR AS SELECT * FROM productos where cod_punto_venta = 'CA003';
CREATE VIEW vista_productos_HER AS SELECT * FROM productos where cod_punto_venta = 'HE004';
CREATE VIEW vista_productos_GUANA AS SELECT * FROM productos where cod_punto_venta = 'GU005';
CREATE VIEW vista_productos_PUNTA AS SELECT * FROM productos where cod_punto_venta = 'PU006';
CREATE VIEW vista_productos_LIM AS SELECT * FROM productos where cod_punto_venta = 'LI007';

CREATE ROLE
	administrador,
	gerente_sj,
	gerente_ala,
	gerente_car,
	gerente_her,
	gerente_guana,
	gerente_punta,
	gerente_lim,
	gerente_general_sj,
    gerente_general_ala,
	gerente_general_car,
	gerente_general_her,
	gerente_general_guana,
	gerente_general_punta,
	gerente_general_lim,
    sistemas_sj,
	sistemas_ala,
	sistemas_car,
	sistemas_her,
	sistemas_guana,
	sistemas_punta,
	sistemas_lim;

	
GRANT ALL 
ON supermercado.* 
TO administrador;
	
GRANT UPDATE
ON supermercado.vista_productos_ALA 
TO gerente_ala;

GRANT UPDATE
ON supermercado.vista_productos_SJ 
TO gerente_sj;

GRANT UPDATE
ON supermercado.vista_productos_CAR 
TO gerente_car;

GRANT UPDATE
ON supermercado.vista_productos_HER 
TO gerente_her;

GRANT UPDATE
ON supermercado.vista_productos_GUANA 
TO gerente_guana;

GRANT UPDATE
ON supermercado.vista_productos_PUNTA 
TO gerente_punta;

GRANT UPDATE
ON supermercado.vista_productos_LIM 
TO gerente_lim;

GRANT ALL 
ON supermercado.vista_productos_SJ
TO gerente_general_sj;

GRANT ALL 
ON supermercado.vista_productos_ALA 
TO gerente_general_ala;

GRANT ALL 
ON supermercado.vista_productos_CAR 
TO gerente_general_car;

GRANT ALL 
ON supermercado.vista_productos_HER 
TO gerente_general_her;

GRANT ALL 
ON supermercado.vista_productos_GUANA 
TO gerente_general_guana;

GRANT ALL 
ON supermercado.vista_productos_PUNTA 
TO gerente_general_punta;

GRANT ALL 
ON supermercado.vista_productos_LIM 
TO gerente_general_lim;


GRANT ALL 
ON supermercado.vista_productos_SJ
TO sistemas_sj;

GRANT ALL 
ON supermercado.vista_productos_ALA 
TO sistemas_ala;

GRANT ALL 
ON supermercado.vista_productos_CAR 
TO sistemas_car;

GRANT ALL 
ON supermercado.vista_productos_HER 
TO sistemas_her;

GRANT ALL 
ON supermercado.vista_productos_GUANA 
TO sistemas_guana;

GRANT ALL 
ON supermercado.vista_productos_PUNTA 
TO sistemas_punta;

GRANT ALL 
ON supermercado.vista_productos_LIM 
TO sistemas_lim;


