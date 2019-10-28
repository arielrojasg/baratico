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

CREATE ROLE	'administrador'@'192.168..';
CREATE ROLE	'gerente_sj'@'192.168..';
CREATE ROLE	'gerente_ala'@'192.168..';
CREATE ROLE	'gerente_car'@'192.168..';
CREATE ROLE	'gerente_her'@'192.168..';
CREATE ROLE	'gerente_guana'@'192.168..';
CREATE ROLE	'gerente_punta'@'192.168..';
CREATE ROLE	'gerente_lim'@'192.168..';
CREATE ROLE	'gerente_general_sj'@'192.168..';
CREATE ROLE	'gerente_general_ala'@'192.168..';
CREATE ROLE	'gerente_general_car'@'192.168..';
CREATE ROLE	'gerente_general_her'@'192.168..';
CREATE ROLE	'gerente_general_guana'@'192.168..';
CREATE ROLE	'gerente_general_punta'@'192.168..';
CREATE ROLE	'gerente_general_lim'@'192.168..';
CREATE ROLE	'sistemas_sj'@'192.168..';
CREATE ROLE	'sistemas_ala'@'192.168..';
CREATE ROLE	'sistemas_car'@'192.168..';
CREATE ROLE	'sistemas_her'@'192.168..';
CREATE ROLE	'sistemas_guana'@'192.168..';
CREATE ROLE	'sistemas_punta'@'192.168..';
CREATE ROLE	'sistemas_lim'@'192.168..';

-- admin grant
GRANT ALL 
ON supermercado.* 
TO 'administrador'@'192.168..';

-- gerente SJ grant
GRANT SELECT, UPDATE
ON supermercado.vista_productos_SJ 
TO 'gerente_sj'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_ALA 
TO 'gerente_sj'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_CAR 
TO 'gerente_sj'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_HER 
TO 'gerente_sj'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_GUANA 
TO 'gerente_sj'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_PUNTA 
TO 'gerente_sj'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_LIM 
TO 'gerente_sj'@'192.168..';

-- gerente ALA grant
GRANT SELECT, UPDATE
ON supermercado.vista_productos_ALA 
TO 'gerente_ala'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_SJ 
TO 'gerente_ala'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_CAR 
TO 'gerente_ala'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_HER 
TO 'gerente_ala'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_GUANA 
TO 'gerente_ala'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_PUNTA 
TO 'gerente_ala'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_LIM 
TO 'gerente_ala'@'192.168..';

-- gerente CAR grant
GRANT SELECT, UPDATE
ON supermercado.vista_productos_CAR 
TO 'gerente_car'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_SJ 
TO 'gerente_car'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_ALA 
TO 'gerente_car'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_HER 
TO 'gerente_car'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_GUANA 
TO 'gerente_car'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_PUNTA 
TO 'gerente_car'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_LIM 
TO 'gerente_car'@'192.168..';

-- gerente HER grant
GRANT SELECT, UPDATE
ON supermercado.vista_productos_HER 
TO 'gerente_her'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_SJ 
TO 'gerente_her'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_ALA 
TO 'gerente_her'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_CAR 
TO 'gerente_her'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_GUANA 
TO 'gerente_her'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_PUNTA 
TO 'gerente_her'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_LIM 
TO 'gerente_her'@'192.168..';

-- gerente GUANA grant
GRANT SELECT, UPDATE
ON supermercado.vista_productos_GUANA 
TO 'gerente_guana'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_SJ 
TO 'gerente_guana'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_ALA 
TO 'gerente_guana'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_CAR 
TO 'gerente_guana'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_HER 
TO 'gerente_guana'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_PUNTA 
TO 'gerente_guana'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_LIM 
TO 'gerente_guana'@'192.168..';

-- gerente PUNTA grant
GRANT SELECT, UPDATE
ON supermercado.vista_productos_PUNTA 
TO 'gerente_punta'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_SJ 
TO 'gerente_punta'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_ALA 
TO 'gerente_punta'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_CAR 
TO 'gerente_punta'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_HER 
TO 'gerente_punta'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_GUANA 
TO 'gerente_punta'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_LIM 
TO 'gerente_punta'@'192.168..';

-- gerente LIM grant
GRANT SELECT, UPDATE
ON supermercado.vista_productos_LIM 
TO 'gerente_lim'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_SJ 
TO 'gerente_lim'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_ALA 
TO 'gerente_lim'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_CAR 
TO 'gerente_lim'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_HER 
TO 'gerente_lim'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_GUANA 
TO 'gerente_lim'@'192.168..';

GRANT SELECT
ON supermercado.vista_productos_PUNTA 
TO 'gerente_lim'@'192.168..';

-- gerente general grant
GRANT INSERT, UPDATE, SELECT, DELETE
ON supermercado.vista_productos_SJ
TO 'gerente_general_sj'@'192.168..';

GRANT INSERT, UPDATE, SELECT, DELETE
ON supermercado.vista_productos_ALA 
TO 'gerente_general_ala'@'192.168..';

GRANT INSERT, UPDATE, SELECT, DELETE
ON supermercado.vista_productos_CAR 
TO 'gerente_general_car'@'192.168..';

GRANT INSERT, UPDATE, SELECT, DELETE
ON supermercado.vista_productos_HER 
TO 'gerente_general_her'@'192.168..';

GRANT INSERT, UPDATE, SELECT, DELETE
ON supermercado.vista_productos_GUANA 
TO 'gerente_general_guana'@'192.168..';

GRANT INSERT, UPDATE, SELECT, DELETE
ON supermercado.vista_productos_PUNTA 
TO 'gerente_general_punta'@'192.168..';

GRANT INSERT, UPDATE, SELECT, DELETE
ON supermercado.vista_productos_LIM 
TO 'gerente_general_lim'@'192.168..';

-- sistemas grant
GRANT ALL 
ON supermercado.vista_productos_SJ
TO 'sistemas_sj'@'192.168..';

GRANT ALL 
ON supermercado.vista_productos_ALA 
TO 'sistemas_ala'@'192.168..';

GRANT ALL 
ON supermercado.vista_productos_CAR 
TO 'sistemas_car'@'192.168..';

GRANT ALL 
ON supermercado.vista_productos_HER 
TO 'sistemas_her'@'192.168..';

GRANT ALL 
ON supermercado.vista_productos_GUANA 
TO 'sistemas_guana'@'192.168..';

GRANT ALL 
ON supermercado.vista_productos_PUNTA 
TO 'sistemas_punta'@'192.168..';

GRANT ALL 
ON supermercado.vista_productos_LIM 
TO 'sistemas_lim'@'192.168..';

-- admin user 
CREATE USER 'sm_admin'@'192.168..'IDENTIFIED BY 'Admin1pass';
-- gerente users
CREATE USER 'sj_ger'@'192.168..' IDENTIFIED BY 'Sjger1pass';
CREATE USER 'ala_ger'@'192.168..' IDENTIFIED BY 'Alager1pass';
CREATE USER 'car_ger'@'192.168..' IDENTIFIED BY 'Carger1pass';
CREATE USER 'her_ger'@'192.168..' IDENTIFIED BY 'Herger1pass';
CREATE USER 'guana_ger'@'192.168..' IDENTIFIED BY 'Guanager1pass';
CREATE USER 'punta_ger'@'192.168..' IDENTIFIED BY 'Puntager1pass';
CREATE USER 'lim_ger'@'192.168..' IDENTIFIED BY 'Limger1pass';
-- general users
CREATE USER 'sj_gen1'@'192.168..' IDENTIFIED BY 'Sjgen1pass';
CREATE USER 'sj_gen2'@'192.168..' IDENTIFIED BY 'Sjgen2pass';

CREATE USER 'ala_gen1'@'192.168..' IDENTIFIED BY 'Alagen1pass';
CREATE USER 'ala_gen2'@'192.168..' IDENTIFIED BY 'Alagen2pass';

CREATE USER 'car_gen1'@'192.168..' IDENTIFIED BY 'Cargen1pass';
CREATE USER 'car_gen2'@'192.168..'IDENTIFIED BY 'Cargen2pass';

CREATE USER 'her_gen1'@'192.168..' IDENTIFIED BY 'Hergen1pass';
CREATE USER 'her_gen2'@'192.168..'IDENTIFIED BY 'Hergen2pass';

CREATE USER 'guana_gen1'@'192.168..' IDENTIFIED BY 'Guanagen1pass';
CREATE USER 'guana_gen2'@'192.168..' IDENTIFIED BY 'Guanagen2pass';

CREATE USER 'punta_gen1'@'192.168..' IDENTIFIED BY 'Puntagen1pass';
CREATE USER 'punta_gen2'@'192.168..' IDENTIFIED BY 'Puntagen2pass';

CREATE USER 'lim_gen1'@'192.168..' IDENTIFIED BY 'Limgen1pass';
CREATE USER 'lim_gen2'@'192.168..' IDENTIFIED BY 'Limgen2pass';
-- sistemas users
CREATE USER 'sj_sis1'@'192.168..' IDENTIFIED BY 'Sjsis1pass';
CREATE USER 'sj_sis2'@'192.168..' IDENTIFIED BY 'Sjsis2pass';
CREATE USER 'sj_sis3'@'192.168..' IDENTIFIED BY 'Sjsis3pass';

CREATE USER 'ala_sis1'@'192.168..' IDENTIFIED BY 'Alasis1pass';
CREATE USER 'ala_sis2'@'192.168..'IDENTIFIED BY 'Alasis2pass';
CREATE USER 'ala_sis3'@'192.168..' IDENTIFIED BY 'Alasis3pass';

CREATE USER 'car_sis1'@'192.168..' IDENTIFIED BY 'Carsis1pass';
CREATE USER 'car_sis2'@'192.168..' IDENTIFIED BY 'Carsis2pass';
CREATE USER 'car_sis3'@'192.168..' IDENTIFIED BY 'Carsis3pass';

CREATE USER 'her_sis1'@'192.168..'IDENTIFIED BY 'Hersis1pass';
CREATE USER 'her_sis2'@'192.168..' IDENTIFIED BY 'Hersis2pass';
CREATE USER 'her_sis3'@'192.168..' IDENTIFIED BY 'Hersis3pass';

CREATE USER 'guana_sis1'@'192.168..' IDENTIFIED BY 'Guanasis1pass';
CREATE USER 'guana_sis2'@'192.168..' IDENTIFIED BY 'Guanasis2pass';
CREATE USER 'guana_sis3'@'192.168..' IDENTIFIED BY 'Guanasis3pass';

CREATE USER 'punta_sis1'@'192.168..' IDENTIFIED BY 'Puntasis1pass';
CREATE USER 'punta_sis2'@'192.168..' IDENTIFIED BY 'Puntasis2pass';
CREATE USER 'punta_sis3'@'192.168..' IDENTIFIED BY 'Puntasis3pass';

CREATE USER 'lim_sis1'@'192.168..' IDENTIFIED BY 'Limsis1pass';
CREATE USER 'lim_sis2'@'192.168..' IDENTIFIED BY 'Limsis2pass';
CREATE USER 'lim_sis3'@'192.168..' IDENTIFIED BY 'Limsis3pass';

-- assign admin
GRANT administrador
TO 'sm_admin'@'192.168..';

-- assign gerente
GRANT gerente_sj
TO 'sj_ger'@'192.168..';

GRANT gerente_ala
TO 'ala_ger'@'192.168..';

GRANT gerente_car
TO 'car_ger'@'192.168..';

GRANT gerente_lim
TO 'her_ger'@'192.168..';

GRANT gerente_her
TO 'guana_ger'@'192.168..';

GRANT gerente_guana
TO 'punta_ger'@'192.168..';

GRANT gerente_punta
TO 'lim_ger'@'192.168..';

-- assign general
GRANT gerente_general_sj
TO 'sj_gen1'@'192.168..',
   'sj_gen2'@'192.168..';

GRANT gerente_general_ala
TO 'ala_gen1'@'192.168..',
   'ala_gen2'@'192.168..';

GRANT gerente_general_car
TO 'car_gen1'@'192.168..',
   'car_gen2'@'192.168..';

GRANT gerente_general_her
TO 'her_gen1'@'192.168..',
   'her_gen2'@'192.168..';

GRANT gerente_general_guana
TO 'guana_gen1'@'192.168..',
   'guana_gen2'@'192.168..';

GRANT gerente_general_punta
TO 'punta_gen1'@'192.168..',
   'punta_gen2'@'192.168..';

GRANT gerente_general_lim
TO 'lim_gen1'@'192.168..',
   'lim_gen2'@'192.168..';
  
-- assign sistemas
GRANT sistemas_sj
TO 'sj_sis1'@'192.168..',
   'sj_sis2'@'192.168..',
   'sj_sis3'@'192.168..';

GRANT sistemas_ala
TO 'ala_sis1'@'192.168..',
   'ala_sis2'@'192.168..',
   'ala_sis3'@'192.168..';

GRANT sistemas_car
TO 'car_sis1'@'192.168..',
   'car_sis2'@'192.168..',
   'car_sis3'@'192.168..';
   
GRANT sistemas_her
TO 'her_sis1'@'192.168..',
   'her_sis2'@'192.168..',
   'her_sis3'@'192.168..';
   
GRANT sistemas_guana
TO 'guana_sis1'@'192.168..',
   'guana_sis2'@'192.168..',
   'guana_sis3'@'192.168..';
   
GRANT sistemas_punta
TO 'punta_sis1'@'192.168..',
   'punta_sis2'@'192.168..',
   'punta_sis3'@'192.168..';
   
GRANT sistemas_lim
TO 'lim_sis1'@'192.168..',
   'lim_sis2'@'192.168..',
   'lim_sis3'@'192.168..';

