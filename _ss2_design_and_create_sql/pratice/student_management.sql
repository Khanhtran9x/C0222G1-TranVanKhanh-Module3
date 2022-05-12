CREATE DATABASE  IF NOT EXISTS student_management;
USE student_management;
CREATE TABLE class(
class_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
class_name VARCHAR(60) NOT NULL,
start_date DATETIME NOT NULL,
status BIT
);