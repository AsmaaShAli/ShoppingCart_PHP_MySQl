-- MySQL Script generated by MySQL Workbench
-- 02/08/20 23:31:57
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema testdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `testdb` ;

-- -----------------------------------------------------
-- Schema testdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `testdb` DEFAULT CHARACTER SET latin1 ;
USE `testdb` ;

-- -----------------------------------------------------
-- Table `testdb`.`tbl_customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `testdb`.`tbl_customer` ;

CREATE TABLE IF NOT EXISTS `testdb`.`tbl_customer` (
  `CustomerID` INT(11) NOT NULL,
  `CustomerName` VARCHAR(150) NULL DEFAULT NULL,
  `Address` VARCHAR(500) NULL DEFAULT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `Country` VARCHAR(45) NULL DEFAULT NULL,
  `PostalCode` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `testdb`.`tbl_order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `testdb`.`tbl_order` ;

CREATE TABLE IF NOT EXISTS `testdb`.`tbl_order` (
  `order_id` INT(11) NOT NULL,
  `customer_id` INT(11) NULL DEFAULT NULL,
  `creation_date` DATE NULL DEFAULT NULL,
  `order_status` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `testdb`.`tbl_order_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `testdb`.`tbl_order_details` ;

CREATE TABLE IF NOT EXISTS `testdb`.`tbl_order_details` (
  `id` INT(11) NOT NULL,
  `order_id` INT(11) NULL DEFAULT NULL,
  `product_name` VARCHAR(255) NULL DEFAULT NULL,
  `product_price` DECIMAL(10,2) NULL DEFAULT NULL,
  `product_quantity` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `testdb`.`tbl_product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `testdb`.`tbl_product` ;

CREATE TABLE IF NOT EXISTS `testdb`.`tbl_product` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `image` VARCHAR(255) NOT NULL,
  `price` DOUBLE(10,2) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `testdb`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `testdb`.`users` ;

CREATE TABLE IF NOT EXISTS `testdb`.`users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username` (`username` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;