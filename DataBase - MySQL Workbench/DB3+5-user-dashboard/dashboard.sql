-- MySQL Script generated by MySQL Workbench
-- Tue Oct 15 14:19:00 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dashboard
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dashboard
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dashboard` DEFAULT CHARACTER SET utf8 ;
USE `dashboard` ;

-- -----------------------------------------------------
-- Table `dashboard`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dashboard`.`users` (
  `user1` INT NOT NULL AUTO_INCREMENT,
  `fname` VARCHAR(45) NOT NULL,
  `lname` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `discription` VARCHAR(45) NULL,
  `Bio` VARCHAR(45) NULL,
  `creaedt_at` VARCHAR(45) NOT NULL,
  `update_at` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user1`),
  UNIQUE INDEX `idtable1_UNIQUE` (`user1` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dashboard`.`admins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dashboard`.`admins` (
  `idadmin` INT NOT NULL AUTO_INCREMENT,
  `userlevel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idadmin`),
  UNIQUE INDEX `idadmin_UNIQUE` (`idadmin` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dashboard`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dashboard`.`posts` (
  `idpost` INT NOT NULL AUTO_INCREMENT,
  `creaedt_at` VARCHAR(45) NOT NULL,
  `user_user1` INT NOT NULL,
  PRIMARY KEY (`idpost`),
  UNIQUE INDEX `idpost_UNIQUE` (`idpost` ASC) VISIBLE,
  INDEX `fk_posts_user1_idx` (`user_user1` ASC) VISIBLE,
  CONSTRAINT `fk_posts_user1`
    FOREIGN KEY (`user_user1`)
    REFERENCES `dashboard`.`users` (`user1`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dashboard`.`comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dashboard`.`comments` (
  `idcomment` INT NOT NULL AUTO_INCREMENT,
  `creaedt_at` VARCHAR(45) NOT NULL,
  `user_user1` INT NOT NULL,
  `posts_idpost` INT NOT NULL,
  PRIMARY KEY (`idcomment`),
  UNIQUE INDEX `idcomment_UNIQUE` (`idcomment` ASC) VISIBLE,
  INDEX `fk_comments_user1_idx` (`user_user1` ASC) VISIBLE,
  INDEX `fk_comments_posts1_idx` (`posts_idpost` ASC) VISIBLE,
  CONSTRAINT `fk_comments_user1`
    FOREIGN KEY (`user_user1`)
    REFERENCES `dashboard`.`users` (`user1`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_posts1`
    FOREIGN KEY (`posts_idpost`)
    REFERENCES `dashboard`.`posts` (`idpost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dashboard`.`admins_has_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dashboard`.`admins_has_user` (
  `admins_idadmin` INT NOT NULL,
  `user_user1` INT NOT NULL,
  PRIMARY KEY (`admins_idadmin`, `user_user1`),
  INDEX `fk_admins_has_user_user1_idx` (`user_user1` ASC) VISIBLE,
  INDEX `fk_admins_has_user_admins_idx` (`admins_idadmin` ASC) VISIBLE,
  CONSTRAINT `fk_admins_has_user_admins`
    FOREIGN KEY (`admins_idadmin`)
    REFERENCES `dashboard`.`admins` (`idadmin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_admins_has_user_user1`
    FOREIGN KEY (`user_user1`)
    REFERENCES `dashboard`.`users` (`user1`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
