-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema employee_directory
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema expenses_tracker
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema expenses_tracker
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `expenses_tracker` DEFAULT CHARACTER SET latin1 ;
USE `expenses_tracker` ;

-- -----------------------------------------------------
-- Table `expenses_tracker`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `expenses_tracker`.`category` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `expenses_tracker`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `expenses_tracker`.`client` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `first_name` VARCHAR(255) NULL DEFAULT NULL,
  `last_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `expenses_tracker`.`expense`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `expenses_tracker`.`expense` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `amount` INT(11) NULL DEFAULT NULL,
  `date_time` VARCHAR(255) NULL DEFAULT NULL,
  `description` VARCHAR(400) NULL DEFAULT NULL,
  `category_id` INT(11) NULL DEFAULT NULL,
  `client_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKmvjm59reb5i075vu38bwcaqj6` (`category_id` ASC) VISIBLE,
  INDEX `FKq0le09a1upxs1ctbr5mpoltep` (`client_id` ASC) VISIBLE,
  CONSTRAINT `FKmvjm59reb5i075vu38bwcaqj6`
    FOREIGN KEY (`category_id`)
    REFERENCES `expenses_tracker`.`category` (`id`),
  CONSTRAINT `FKq0le09a1upxs1ctbr5mpoltep`
    FOREIGN KEY (`client_id`)
    REFERENCES `expenses_tracker`.`client` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `expenses_tracker`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `expenses_tracker`.`role` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `expenses_tracker`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `expenses_tracker`.`user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `user_name` VARCHAR(255) NULL DEFAULT NULL,
  `client_id` INT(11) NULL DEFAULT NULL,
  `enabled` BIT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `UK_rb7eox526ilbewv2wuv5bnsrt` (`client_id` ASC) VISIBLE,
  CONSTRAINT `FKrl8au09hfjd9742b89li2rb3`
    FOREIGN KEY (`client_id`)
    REFERENCES `expenses_tracker`.`client` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `expenses_tracker`.`users_roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `expenses_tracker`.`users_roles` (
  `user_id` INT(11) NOT NULL,
  `role_id` INT(11) NOT NULL,
  INDEX `FKt4v0rrweyk393bdgt107vdx0x` (`role_id` ASC) VISIBLE,
  INDEX `FKgd3iendaoyh04b95ykqise6qh` (`user_id` ASC) VISIBLE,
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh`
    FOREIGN KEY (`user_id`)
    REFERENCES `expenses_tracker`.`user` (`id`),
  CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x`
    FOREIGN KEY (`role_id`)
    REFERENCES `expenses_tracker`.`role` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
