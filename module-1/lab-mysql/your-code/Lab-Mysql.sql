-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `VIN` INT NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` VARCHAR(45) NOT NULL,
  `Colour` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invocie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invocie` (
  `Invoice_number` INT NOT NULL,
  `Date` VARCHAR(45) NOT NULL,
  `Car` VARCHAR(45) NOT NULL,
  `Customer` VARCHAR(45) NOT NULL,
  `Salesperson` VARCHAR(45) NULL,
  `Customer_VIN` INT NOT NULL,
  PRIMARY KEY (`Invoice_number`),
  INDEX `fk_Invocie_Customer_idx` (`Customer_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Invocie_Customer`
    FOREIGN KEY (`Customer_VIN`)
    REFERENCES `mydb`.`Customer` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `Customer_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone_number` VARCHAR(45) NOT NULL,
  `E-mail` VARCHAR(45) NOT NULL,
  `Adress` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal_Code` VARCHAR(45) NOT NULL,
  `Invocie_Invoice_number` INT NOT NULL,
  PRIMARY KEY (`Customer_ID`),
  INDEX `fk_Customer_Invocie1_idx` (`Invocie_Invoice_number` ASC) VISIBLE,
  CONSTRAINT `fk_Customer_Invocie1`
    FOREIGN KEY (`Invocie_Invoice_number`)
    REFERENCES `mydb`.`Invocie` (`Invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `Customer_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone_number` VARCHAR(45) NOT NULL,
  `E-mail` VARCHAR(45) NOT NULL,
  `Adress` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal_Code` VARCHAR(45) NOT NULL,
  `Invocie_Invoice_number` INT NOT NULL,
  PRIMARY KEY (`Customer_ID`),
  INDEX `fk_Customer_Invocie1_idx` (`Invocie_Invoice_number` ASC) VISIBLE,
  CONSTRAINT `fk_Customer_Invocie1`
    FOREIGN KEY (`Invocie_Invoice_number`)
    REFERENCES `mydb`.`Invocie` (`Invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson` (
  `Staff_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  `Invocie_Invoice_number` INT NOT NULL,
  `Customer_VIN` INT NOT NULL,
  PRIMARY KEY (`Staff_ID`),
  INDEX `fk_Salesperson_Invocie1_idx` (`Invocie_Invoice_number` ASC) VISIBLE,
  INDEX `fk_Salesperson_Customer1_idx` (`Customer_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_Invocie1`
    FOREIGN KEY (`Invocie_Invoice_number`)
    REFERENCES `mydb`.`Invocie` (`Invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson_Customer1`
    FOREIGN KEY (`Customer_VIN`)
    REFERENCES `mydb`.`Customer` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
