-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mpg
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mpg
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mpg` DEFAULT CHARACTER SET utf8 ;
USE `mpg` ;

-- -----------------------------------------------------
-- Table `mpg`.`types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mpg`.`types` (
  `type_id` INT NOT NULL,
  `type_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`type_id`),
  UNIQUE INDEX `type_id_UNIQUE` (`type_id` ASC) VISIBLE,
  UNIQUE INDEX `type_name_UNIQUE` (`type_name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mpg`.`members`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mpg`.`members` (
  `username` VARCHAR(45) NOT NULL,
  `join_date` VARCHAR(45) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kakaoEmail` VARCHAR(200) NULL,
  `naverEmail` VARCHAR(200) NULL,
  `withdrawal` VARCHAR(45) NULL,
  `point` INT NOT NULL DEFAULT 0,
  `user_type` INT NULL,
  `phoneNum` VARCHAR(45) NOT NULL,
  `phone_auth_yn` INT(1) NOT NULL,
  `user_title` VARCHAR(45) NULL,
  `profileimg` VARCHAR(200) NULL,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `kakaoEmail_UNIQUE` (`kakaoEmail` ASC) VISIBLE,
  UNIQUE INDEX `naverEmail_UNIQUE` (`naverEmail` ASC) VISIBLE,
  PRIMARY KEY (`phoneNum`),
  INDEX `user_type_idx` (`user_type` ASC) VISIBLE,
  CONSTRAINT `user_type`
    FOREIGN KEY (`user_type`)
    REFERENCES `mpg`.`types` (`type_id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mpg`.`stores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mpg`.`stores` (
  `store_id` INT NOT NULL,
  `store_name` VARCHAR(45) NOT NULL,
  `store_location` VARCHAR(45) NOT NULL,
  `store_zipcode` VARCHAR(45) NOT NULL,
  `store_addr` VARCHAR(100) NOT NULL,
  `store_restaddr` VARCHAR(100) NOT NULL,
  `store_foottype` VARCHAR(50) NOT NULL,
  `store_images` VARCHAR(150) NULL,
  `store_eval` DOUBLE NULL,
  `store_keywords` VARCHAR(100) NULL,
  `store_tel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE INDEX `store_id_UNIQUE` (`store_id` ASC) INVISIBLE,
  UNIQUE INDEX `store_owner_UNIQUE` (`store_owner` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mpg`.`sellmenu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mpg`.`sellmenu` (
  `menu_id` INT NOT NULL,
  `menu_name` VARCHAR(45) NULL,
  `menu_price` VARCHAR(45) NULL,
  `menu_type` VARCHAR(45) NULL,
  `store_id` INT NULL,
  PRIMARY KEY (`menu_id`),
  UNIQUE INDEX `menu_id_UNIQUE` (`menu_id` ASC) VISIBLE,
  INDEX `store_id_idx` (`store_id` ASC) VISIBLE,
  CONSTRAINT `store_id`
    FOREIGN KEY (`store_id`)
    REFERENCES `mpg`.`stores` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mpg`.`reply`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mpg`.`reply` (
  `reply_id` INT NOT NULL,
  `reply_user` VARCHAR(45) NULL,
  PRIMARY KEY (`reply_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mpg`.`reviews`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mpg`.`reviews` (
  `review_id` INT NOT NULL,
  `review_user` VARCHAR(45) NOT NULL,
  `review_content` VARCHAR(45) NOT NULL,
  `review_eval` FLOAT NOT NULL,
  `review_date` TIMESTAMP NOT NULL,
  `review_tag` VARCHAR(45) NULL,
  `review_images` VARCHAR(200) NULL,
  `store_id` INT NULL,
  PRIMARY KEY (`review_id`),
  INDEX `reply_user_idx` (`review_user` ASC) VISIBLE,
  INDEX `store_id_idx` (`store_id` ASC) VISIBLE,
  CONSTRAINT `reply_user`
    FOREIGN KEY (`review_user`)
    REFERENCES `mpg`.`members` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `store_id`
    FOREIGN KEY (`store_id`)
    REFERENCES `mpg`.`stores` (`store_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mpg`.`costomerservice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mpg`.`costomerservice` (
  `cs_id` INT NOT NULL,
  `cs_user` VARCHAR(45) NOT NULL,
  `cs_type` VARCHAR(45) NOT NULL,
  `cs_content` VARCHAR(45) NOT NULL,
  `cs_date` VARCHAR(45) NOT NULL,
  `cs_images` VARCHAR(200) NULL,
  `cs_done_yn` INT NULL,
  PRIMARY KEY (`cs_id`),
  INDEX `cs_user_idx` (`cs_user` ASC) VISIBLE,
  CONSTRAINT `cs_user`
    FOREIGN KEY (`cs_user`)
    REFERENCES `mpg`.`members` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
