-- comapany database holding the employee, role and department tables

DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

USE company_db;

CREATE TABLE `department` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`id`)
    ON DELETE CASCADE
);
  
CREATE TABLE `role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(30) NOT NULL,
  `salary` DECIMAL(12,2) NOT NULL,
  `department_id` INT NOT NULL,
  PRIMARY KEY (`id`)
  FOREIGN KEY (department_id) REFERENCES department(id)
  );
  
CREATE TABLE `employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(30) NOT NULL,
  `role_id` INT NOT NULL,
  `manager_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`)
  FOREIGN KEY (role_id) REFERENCES role(id)
  );