-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tienda
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tienda
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tienda` DEFAULT CHARACTER SET utf8 ;
USE `tienda` ;

-- -----------------------------------------------------
-- Table `tienda`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda`.`productos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `precio` DECIMAL(5,2) NOT NULL,
  `categoria` ENUM('camiseta', 'pantalon', 'abrigo', 'camisa') NOT NULL,
  `tipo` ENUM('hombre', 'mujer', 'infantil') NOT NULL,
  `talla` ENUM('xl', 'l', 'm', 's', 'xs') NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `stock` INT NOT NULL,
  `disponibilidad` TINYINT NOT NULL,
  `imagen` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tienda`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rol` ENUM('admin', 'cliente') NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `nombre_completo` VARCHAR(45) NOT NULL,
  `imagen` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tienda`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda`.`pedidos` (
  `productos_id` INT NOT NULL,
  `usuarios_id` INT NOT NULL,
  `fecha` TIMESTAMP NOT NULL,
  INDEX `fk_productos_has_usuarios_usuarios1_idx` (`usuarios_id` ASC) VISIBLE,
  PRIMARY KEY (`productos_id`, `usuarios_id`, `fecha`),
  CONSTRAINT `fk_productos_has_usuarios_productos`
    FOREIGN KEY (`productos_id`)
    REFERENCES `tienda`.`productos` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_productos_has_usuarios_usuarios1`
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `tienda`.`usuarios` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
