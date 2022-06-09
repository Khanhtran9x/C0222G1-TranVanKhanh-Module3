CREATE DATABASE library;
USE library;

CREATE TABLE book (
book_code VARCHAR(25) NOT NULL PRIMARY KEY,
book_name VARCHAR(100) NOT NULL,
author VARCHAR(45),
`description` VARCHAR(100),
numbers INT
);

CREATE TABLE student (
student_code VARCHAR(25) NOT NULL PRIMARY KEY,
student_name VARCHAR(45) NOT NULL,
class_name VARCHAR(25)
);

CREATE TABLE book_rent_tag(
book_rent_code VARCHAR(25) NOT NULL PRIMARY KEY,
book_code VARCHAR(25) NOT NULL,
student_code VARCHAR(25) NOT NULL,
status BIT(1),
rent_date DATE,
return_date DATE,
FOREIGN KEY (book_code) REFERENCES book(book_code) ON DELETE CASCADE,
FOREIGN KEY (student_code) REFERENCES student(student_code) ON DELETE CASCADE
);