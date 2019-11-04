create database auditoria_supermercado;
use auditoria_supermercado;

create table auditoria(
nombre_tabla varchar(40),
operacion varchar(40),
valor_viejo varchar(50),
valor_nuevo varchar(50),
fecha_actual date,
usuario varchar(100)
);
------------------------- puntos_venta
-- insert
CREATE  TRIGGER insertar_auditoria_punto_venta AFTER INSERT ON supermercado.puntos_venta 
FOR EACH ROW INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('puntos_venta','INSERT',null,NEW.codigo,now(),user());
-- update
delimiter //

 CREATE TRIGGER update_auditoria_punto_venta AFTER UPDATE ON supermercado.puntos_venta
    FOR EACH ROW
     BEGIN
        IF OLD.codigo<>NEW.codigo THEN
            INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('puntos_venta','UPDATE',OLD.codigo,NEW.codigo,now(),user());
        ELSEIF OLD.provincia<>NEW.provincia THEN
            INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('puntos_venta','UPDATE',OLD.provincia,NEW.provincia,now(),user());
        END IF;
   END;//
delimiter ;
-- delete
CREATE  TRIGGER delete_auditoria_punto_venta AFTER DELETE ON supermercado.puntos_venta 
FOR EACH ROW INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('puntos_venta','DELETE',OLD.codigo,null,now(),user());
------------------ Area

-- insert
CREATE  TRIGGER insertar_auditoria_areas AFTER INSERT ON supermercado.areas 
FOR EACH ROW INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Areas','INSERT',null,NEW.id_area,now(),user());
 -- update
delimiter //

 CREATE TRIGGER update_auditoria_areas AFTER UPDATE ON supermercado.areas
    FOR EACH ROW
     BEGIN
        IF OLD.id_area<>NEW.id_area THEN
            INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Areas','UPDATE',OLD.id_area,NEW.id_area,now(),user());
        ELSEIF OLD.nombre<>NEW.nombre THEN
            INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Areas','UPDATE',OLD.nombre,NEW.nombre,now(),user());
        END IF;
   END;//
 -- delete
CREATE  TRIGGER delete_auditoria_areas AFTER DELETE ON supermercado.areas 
FOR EACH ROW INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Areas','DELETE',OLD.id_area,null,now(),user());
 
 -------------------------------------------------- productos
 id_producto int auto_increment,
PLU varchar(5) default 'NA' unique,
EAN varchar(13) not null,
descripcion varchar(100) not null,
peso double not null,
precio double not null,
id_area_venta int not null,
cod_punto_venta varchar(10) not null,

-- insert
CREATE  TRIGGER insertar_auditoria_productos AFTER INSERT ON supermercado.productos 
FOR EACH ROW INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Productos','INSERT',null,NEW.id_producto,now(),user());
  -- update
 delimiter //
 CREATE TRIGGER update_auditoria_productos AFTER UPDATE ON supermercado.productos
    FOR EACH ROW
     BEGIN
        IF OLD.PLU<>NEW.PLU THEN
            INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Productos',CONCAT('UPDATE ID= ',OLD.id_producto),OLD.PLU,NEW.PLU,now(),user());
        ELSEIF OLD.EAN<>NEW.EAN THEN
            INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Productos',CONCAT('UPDATE ID= ',OLD.id_producto),OLD.EAN,NEW.EAN,now(),user());
  ELSEIF OLD.descripcion<>NEW.descripcion THEN
            INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Productos',CONCAT('UPDATE ID= ',OLD.id_producto),OLD.descripcion,NEW.descripcion,now(),user());
 
   ELSEIF OLD.peso<>NEW.peso THEN
            INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Productos',CONCAT('UPDATE ID= ',OLD.id_producto),OLD.peso,NEW.peso,now(),user());
 
   ELSEIF OLD.precio<>NEW.precio THEN
            INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Productos',CONCAT('UPDATE ID= ',OLD.id_producto),OLD.precio,NEW.precio,now(),user());
 
   ELSEIF OLD.id_area_venta<>NEW.id_area_venta THEN
            INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Productos',CONCAT('UPDATE ID= ',OLD.id_producto),OLD.id_area_venta,NEW.id_area_venta,now(),user());
 
   ELSEIF OLD.cod_punto_venta<>NEW.cod_punto_venta THEN
            INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Productos',CONCAT('UPDATE ID= ',OLD.id_producto),OLD.cod_punto_venta,NEW.cod_punto_venta,now(),user());
        END IF;
   END;//
   
   -- delete 
   CREATE  TRIGGER delete_auditoria_productos AFTER DELETE ON supermercado.productos 
FOR EACH ROW INSERT into auditoria_supermercado.auditoria(nombre_tabla,operacion,valor_viejo, valor_nuevo, fecha_actual,usuario)
 VALUES ('Productos','DELETE',OLD.id_producto,null,now(),user());