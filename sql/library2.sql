drop schema library;
CREATE DATABASE library;
USE library;

SET NAMES utf8;

START TRANSACTION;
CREATE TABLE `book` (
                             `book_id` BIGINT NOT NULL auto_increment PRIMARY KEY,
                             `name` VARCHAR ( 25 ) NOT NULL,
                             `author` VARCHAR ( 25 ) NOT NULL,
                             `publish` VARCHAR ( 25 ) NOT NULL,
                             `ISBN` VARCHAR ( 15 ) NOT NULL,
                             `introduction` text,
                             `language` VARCHAR ( 4 ) NOT NULL,
                             `price` DECIMAL ( 10, 2 ) NOT NULL,
                             `pub_date` date NOT NULL,
                             `class_id` INT DEFAULT NULL,
                             `number` INT DEFAULT NULL
)  DEFAULT CHARSET = utf8;


CREATE TABLE `class` ( `class_id` INT NOT NULL PRIMARY KEY,
                            `class_name` VARCHAR ( 15 ) NOT NULL ) ENGINE = INNODB DEFAULT CHARSET = utf8;

CREATE TABLE `borrow` (
                             `borrow_id` int NOT NULL auto_increment PRIMARY KEY,
                             `book_id` bigint NOT NULL,
                             `reader_id` bigint NOT NULL,
                             `borrow_date` date NOT NULL,
                             `due_date` date,
                             `return_date` date DEFAULT NULL
)  DEFAULT CHARSET = utf8;


CREATE TABLE `reservation` (
                               `reservation_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                               `student_id` BIGINT NOT NULL,
                               `book_id` BIGINT NOT NULL,
                               `reservation_date` DATE NOT NULL,
                               `book_name` VARCHAR ( 25 ) NOT NULL
)  DEFAULT CHARSET = utf8;



CREATE TABLE `admin` ( `admin_id` BIGINT NOT NULL PRIMARY KEY,
                       `password` VARCHAR ( 15 ) NOT NULL,
                       `username` VARCHAR ( 15 ) DEFAULT NULL,
                       `name` VARCHAR ( 15) DEFAULT  NULL)DEFAULT CHARSET = utf8;

CREATE TABLE `reader` (
                               `reader_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                               `name` VARCHAR ( 20 ) default 'X',
                               `sex` VARCHAR ( 1 ) default  'M',
                               `birth` date NOT NULL,
                               `address` VARCHAR ( 50 ) NOT NULL,
                               `phone` VARCHAR ( 15 ) NOT NULL,
                               `username` VARCHAR (15) default NULL,
                                `password` VARCHAR (15) DEFAULT '123456',
                                `profile_picture` VARCHAR(255) DEFAULT  'img/default.jpg'
)DEFAULT CHARSET = utf8;


CREATE TABLE `overdue` (
                           `overdue_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                           `student_id` BIGINT NOT NULL,
                           `borrow_id` INT NOT NULL,
                           `due_date` DATE NOT NULL,
                           `return_date` DATE NOT NULL,
                           `overdue_days` INT NOT NULL,
                           `fine_amount` DECIMAL(10, 2) NOT NULL,
                            `name` VARCHAR(25) NOT NULL
)DEFAULT CHARSET = utf8;

COMMIT;