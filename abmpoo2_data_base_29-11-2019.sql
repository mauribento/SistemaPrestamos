/*
SQLyog Community v12.09 (64 bit)
MySQL - 5.7.28-log : Database - abmpoo2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`abmpoo2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `abmpoo2`;

/*Table structure for table `detalle_prestamo` */

DROP TABLE IF EXISTS `detalle_prestamo`;

CREATE TABLE `detalle_prestamo` (
  `id_detalle_prestamo` int(20) NOT NULL AUTO_INCREMENT,
  `monto_cuota` double(20,2) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `idprestamo_cuota` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_prestamo`),
  KEY `idprestamo_cuota_idx` (`idprestamo_cuota`),
  CONSTRAINT `idprestamo_cuota` FOREIGN KEY (`idprestamo_cuota`) REFERENCES `prestamo_cuota` (`idprestamo_cuota`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `detalle_prestamo` */

insert  into `detalle_prestamo`(`id_detalle_prestamo`,`monto_cuota`,`fecha_pago`,`idprestamo_cuota`) values (1,12194.00,'2019-11-27',1),(26,12194.00,'2019-11-29',2),(27,12194.00,'2019-11-29',3),(28,12194.00,'2019-11-30',4),(29,12194.00,'2019-11-29',5),(30,20000.00,'2019-11-29',6);

/*Table structure for table `prestamo` */

DROP TABLE IF EXISTS `prestamo`;

CREATE TABLE `prestamo` (
  `id_prestamo` int(20) NOT NULL AUTO_INCREMENT,
  `importe_prestamo` decimal(20,0) DEFAULT NULL,
  `cantidad_cuotas` decimal(20,0) DEFAULT NULL,
  `porcentaje_int` double(20,2) DEFAULT NULL,
  `fecha_actual` date NOT NULL,
  `fecha_primer_vencimiento` date NOT NULL,
  `id_tipo_prestamo` int(20) DEFAULT NULL,
  PRIMARY KEY (`id_prestamo`),
  KEY `id_tipo_prestamo_idx` (`id_tipo_prestamo`),
  CONSTRAINT `id_tipo_prestamo` FOREIGN KEY (`id_tipo_prestamo`) REFERENCES `tipo_prestamo` (`id_tipo_prestamo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `prestamo` */

insert  into `prestamo`(`id_prestamo`,`importe_prestamo`,`cantidad_cuotas`,`porcentaje_int`,`fecha_actual`,`fecha_primer_vencimiento`,`id_tipo_prestamo`) values (1,'50000','5',2.00,'2019-09-26','2019-11-27',1),(2,'200000','3',5.00,'2019-11-27','2019-11-27',1),(3,'1000000','10',8.00,'2019-11-29','2019-11-27',1),(4,'2500000','15',4.00,'2019-11-30','2019-11-28',1);

/*Table structure for table `prestamo_cuota` */

DROP TABLE IF EXISTS `prestamo_cuota`;

CREATE TABLE `prestamo_cuota` (
  `idprestamo_cuota` int(11) NOT NULL AUTO_INCREMENT,
  `prestamo_nro_cuota` int(11) DEFAULT NULL,
  `prestamo_monto_cuota` decimal(18,2) DEFAULT NULL,
  `prestamo_fecha_pago` date DEFAULT NULL,
  `id_prestamo` int(11) DEFAULT NULL,
  `prestamo_monto_interes` decimal(18,2) DEFAULT NULL,
  `prestamo_capital_pagado` decimal(18,2) DEFAULT NULL,
  `prestamo_cuota_Amortizada` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`idprestamo_cuota`),
  KEY `id_prestamo_idx` (`id_prestamo`),
  CONSTRAINT `id_prestamo` FOREIGN KEY (`id_prestamo`) REFERENCES `prestamo` (`id_prestamo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `prestamo_cuota` */

insert  into `prestamo_cuota`(`idprestamo_cuota`,`prestamo_nro_cuota`,`prestamo_monto_cuota`,`prestamo_fecha_pago`,`id_prestamo`,`prestamo_monto_interes`,`prestamo_capital_pagado`,`prestamo_cuota_Amortizada`) values (1,1,'12194.00','2019-11-27',1,'3500.00','50000.00','8694.00'),(2,2,'12194.00','2019-12-27',1,'2891.00','41305.00','9303.00'),(3,3,'12194.00','2020-01-27',1,'2240.00','32002.00','9954.00'),(4,4,'12194.00','2020-02-27',1,'1543.00','22047.00','10651.00'),(5,5,'12194.00','2020-03-27',1,'797.00','11396.00','11396.00'),(6,1,'20000.00','2020-01-27',2,'14000.00','200000.00','62210.00'),(7,2,'76210.00','2020-02-27',2,'9645.00','137789.00','66565.00'),(8,3,'76210.00','2020-03-28',2,'4985.00','71224.00','71224.00'),(9,1,'142377.00','2020-03-28',3,'70000.00','1000000.00','72377.00'),(10,2,'142377.00','2020-04-28',3,'64933.00','927622.00','77443.00'),(11,3,'142377.00','2020-05-28',3,'59512.00','850178.00','82864.00'),(12,4,'142377.00','2020-06-28',3,'53711.00','767313.00','88665.00'),(13,5,'142377.00','2020-07-28',3,'47505.00','678648.00','94872.00'),(14,6,'142377.00','2020-08-28',3,'40864.00','583776.00','101513.00'),(15,7,'142377.00','2020-09-28',3,'33758.00','482263.00','108619.00'),(16,8,'142377.00','2020-10-28',3,'26155.00','373644.00','116222.00'),(17,9,'142377.00','2020-11-28',3,'18019.00','257421.00','124357.00'),(18,10,'142377.00','2020-12-28',3,'9314.00','133063.00','133062.00');

/*Table structure for table `tipo_prestamo` */

DROP TABLE IF EXISTS `tipo_prestamo`;

CREATE TABLE `tipo_prestamo` (
  `id_tipo_prestamo` int(10) NOT NULL AUTO_INCREMENT,
  `desc_tipo_prestamo` char(15) NOT NULL,
  PRIMARY KEY (`id_tipo_prestamo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tipo_prestamo` */

insert  into `tipo_prestamo`(`id_tipo_prestamo`,`desc_tipo_prestamo`) values (1,'Directo'),(2,'Sistema Aleman'),(3,'Sistema Frances');

/*Table structure for table `vs_lista_prestamos` */

DROP TABLE IF EXISTS `vs_lista_prestamos`;

/*!50001 DROP VIEW IF EXISTS `vs_lista_prestamos` */;
/*!50001 DROP TABLE IF EXISTS `vs_lista_prestamos` */;

/*!50001 CREATE TABLE  `vs_lista_prestamos`(
 `id_prestamo` int(20) ,
 `importe_prestamo` decimal(20,0) ,
 `cantidad_cuotas` decimal(20,0) ,
 `porcentaje_int` double(20,2) ,
 `fecha_actual` date ,
 `fecha_primer_vencimiento` date ,
 `id_tipo_prestamo` int(20) ,
 `desc_tipo_prestamo` char(15) 
)*/;

/*Table structure for table `vs_lista_prestamos_dos` */

DROP TABLE IF EXISTS `vs_lista_prestamos_dos`;

/*!50001 DROP VIEW IF EXISTS `vs_lista_prestamos_dos` */;
/*!50001 DROP TABLE IF EXISTS `vs_lista_prestamos_dos` */;

/*!50001 CREATE TABLE  `vs_lista_prestamos_dos`(
 `id_prestamo` int(20) ,
 `importe_prestamo` decimal(20,0) ,
 `cantidad_cuotas` decimal(20,0) ,
 `porcentaje_int` double(20,2) ,
 `fecha_actual` date ,
 `fecha_primer_vencimiento` date ,
 `id_tipo_prestamo` int(20) ,
 `desc_tipo_prestamo` char(15) ,
 `idprestamo_cuota` int(11) 
)*/;

/*Table structure for table `vs_prestamos_detalle_cuota` */

DROP TABLE IF EXISTS `vs_prestamos_detalle_cuota`;

/*!50001 DROP VIEW IF EXISTS `vs_prestamos_detalle_cuota` */;
/*!50001 DROP TABLE IF EXISTS `vs_prestamos_detalle_cuota` */;

/*!50001 CREATE TABLE  `vs_prestamos_detalle_cuota`(
 `idprestamo_cuota` int(11) ,
 `prestamo_nro_cuota` int(11) ,
 `prestamo_monto_cuota` decimal(18,2) ,
 `prestamo_fecha_pago` date ,
 `id_prestamo` int(11) ,
 `prestamo_monto_interes` decimal(18,2) ,
 `prestamo_capital_pagado` decimal(18,2) ,
 `prestamo_cuota_Amortizada` decimal(18,2) ,
 `id_detalle_prestamo` int(20) ,
 `pagado` int(1) ,
 `pagado_detalle` varchar(2) 
)*/;

/*Table structure for table `vs_registro_pago` */

DROP TABLE IF EXISTS `vs_registro_pago`;

/*!50001 DROP VIEW IF EXISTS `vs_registro_pago` */;
/*!50001 DROP TABLE IF EXISTS `vs_registro_pago` */;

/*!50001 CREATE TABLE  `vs_registro_pago`(
 `id_prestamo` int(20) ,
 `fecha_primer_vencimiento` date ,
 `importe_prestamo` decimal(20,0) ,
 `cantidad_cuotas` decimal(20,0) ,
 `porcentaje_int` double(20,2) ,
 `nro_cuota_pagar` decimal(12,0) ,
 `cancelado` int(1) ,
 `monto_cuota` decimal(18,2) ,
 `idprestamo_cuota` int(11) ,
 `prestamo_monto_interes` decimal(18,2) ,
 `prestamo_fecha_pago` date 
)*/;

/*View structure for view vs_lista_prestamos */

/*!50001 DROP TABLE IF EXISTS `vs_lista_prestamos` */;
/*!50001 DROP VIEW IF EXISTS `vs_lista_prestamos` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vs_lista_prestamos` AS select `a`.`id_prestamo` AS `id_prestamo`,`a`.`importe_prestamo` AS `importe_prestamo`,`a`.`cantidad_cuotas` AS `cantidad_cuotas`,`a`.`porcentaje_int` AS `porcentaje_int`,`a`.`fecha_actual` AS `fecha_actual`,`a`.`fecha_primer_vencimiento` AS `fecha_primer_vencimiento`,`a`.`id_tipo_prestamo` AS `id_tipo_prestamo`,`b`.`desc_tipo_prestamo` AS `desc_tipo_prestamo` from (`prestamo` `a` left join `tipo_prestamo` `b` on((`a`.`id_tipo_prestamo` = `b`.`id_tipo_prestamo`))) */;

/*View structure for view vs_lista_prestamos_dos */

/*!50001 DROP TABLE IF EXISTS `vs_lista_prestamos_dos` */;
/*!50001 DROP VIEW IF EXISTS `vs_lista_prestamos_dos` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vs_lista_prestamos_dos` AS select `a`.`id_prestamo` AS `id_prestamo`,`a`.`importe_prestamo` AS `importe_prestamo`,`a`.`cantidad_cuotas` AS `cantidad_cuotas`,`a`.`porcentaje_int` AS `porcentaje_int`,`a`.`fecha_actual` AS `fecha_actual`,`a`.`fecha_primer_vencimiento` AS `fecha_primer_vencimiento`,`a`.`id_tipo_prestamo` AS `id_tipo_prestamo`,`a`.`desc_tipo_prestamo` AS `desc_tipo_prestamo`,`b`.`idprestamo_cuota` AS `idprestamo_cuota` from (`abmpoo2`.`vs_lista_prestamos` `a` left join `abmpoo2`.`vs_registro_pago` `b` on((`a`.`id_prestamo` = `b`.`id_prestamo`))) */;

/*View structure for view vs_prestamos_detalle_cuota */

/*!50001 DROP TABLE IF EXISTS `vs_prestamos_detalle_cuota` */;
/*!50001 DROP VIEW IF EXISTS `vs_prestamos_detalle_cuota` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vs_prestamos_detalle_cuota` AS select `a`.`idprestamo_cuota` AS `idprestamo_cuota`,`a`.`prestamo_nro_cuota` AS `prestamo_nro_cuota`,`a`.`prestamo_monto_cuota` AS `prestamo_monto_cuota`,`a`.`prestamo_fecha_pago` AS `prestamo_fecha_pago`,`a`.`id_prestamo` AS `id_prestamo`,`a`.`prestamo_monto_interes` AS `prestamo_monto_interes`,`a`.`prestamo_capital_pagado` AS `prestamo_capital_pagado`,`a`.`prestamo_cuota_Amortizada` AS `prestamo_cuota_Amortizada`,`b`.`id_detalle_prestamo` AS `id_detalle_prestamo`,(case when (`b`.`id_detalle_prestamo` is not null) then 1 else 0 end) AS `pagado`,(case when (`b`.`id_detalle_prestamo` is not null) then 'Si' else 'No' end) AS `pagado_detalle` from (`prestamo_cuota` `a` left join `detalle_prestamo` `b` on((`a`.`idprestamo_cuota` = `b`.`idprestamo_cuota`))) */;

/*View structure for view vs_registro_pago */

/*!50001 DROP TABLE IF EXISTS `vs_registro_pago` */;
/*!50001 DROP VIEW IF EXISTS `vs_registro_pago` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vs_registro_pago` AS select `a`.`id_prestamo` AS `id_prestamo`,`a`.`fecha_primer_vencimiento` AS `fecha_primer_vencimiento`,`a`.`importe_prestamo` AS `importe_prestamo`,`a`.`cantidad_cuotas` AS `cantidad_cuotas`,`a`.`porcentaje_int` AS `porcentaje_int`,`a`.`nro_cuota_pagar` AS `nro_cuota_pagar`,`a`.`cancelado` AS `cancelado`,`b`.`prestamo_monto_cuota` AS `monto_cuota`,`b`.`idprestamo_cuota` AS `idprestamo_cuota`,`b`.`prestamo_monto_interes` AS `prestamo_monto_interes`,`b`.`prestamo_fecha_pago` AS `prestamo_fecha_pago` from (((select `a`.`id_prestamo` AS `id_prestamo`,`a`.`fecha_primer_vencimiento` AS `fecha_primer_vencimiento`,`a`.`importe_prestamo` AS `importe_prestamo`,`a`.`cantidad_cuotas` AS `cantidad_cuotas`,`a`.`porcentaje_int` AS `porcentaje_int`,ifnull(`xx`.`nro_cuota`,0) AS `total_nro_cuota`,cast((case when (ifnull(`xx`.`nro_cuota`,0) < `a`.`cantidad_cuotas`) then (ifnull(`xx`.`nro_cuota`,0) + 1) when (ifnull(`xx`.`nro_cuota`,0) = `a`.`cantidad_cuotas`) then ifnull(`xx`.`nro_cuota`,0) end) as decimal(12,0)) AS `nro_cuota_pagar`,(case when (ifnull(`xx`.`nro_cuota`,0) = `a`.`cantidad_cuotas`) then 1 else 0 end) AS `cancelado` from (`abmpoo2`.`prestamo` `a` left join (select max(`b`.`prestamo_nro_cuota`) AS `nro_cuota`,`b`.`id_prestamo` AS `id_prestamo` from (`abmpoo2`.`detalle_prestamo` `a` join `abmpoo2`.`prestamo_cuota` `b` on((`a`.`idprestamo_cuota` = `b`.`idprestamo_cuota`))) group by `b`.`id_prestamo`) `xx` on((`a`.`id_prestamo` = `xx`.`id_prestamo`))))) `a` left join `abmpoo2`.`prestamo_cuota` `b` on(((`a`.`nro_cuota_pagar` = `b`.`prestamo_nro_cuota`) and (`a`.`id_prestamo` = `b`.`id_prestamo`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
