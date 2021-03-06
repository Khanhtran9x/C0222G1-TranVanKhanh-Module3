CREATE DATABASE  IF NOT EXISTS student_management;
USE student_management;

CREATE TABLE class(
class_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
class_name VARCHAR(60) NOT NULL,
start_date DATETIME NOT NULL,
`status` BIT
);

CREATE TABLE student(
student_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR(30) NOT NULL,
address VARCHAR(50),
phone VARCHAR(20),
`status` BIT,
class_id INT
);

CREATE TABLE `subject`(
sub_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
sub_name VARCHAR(30) NOT NULL,
credit TINYINT NOT NULL DEFAULT 1 CHECK(credit >= 1),
`status` BIT DEFAULT 1
);

CREATE TABLE mark(
mark_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
sub_id INT NOT NULL,
student_id INT NOT NULL,
mark FLOAT DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
exam_times TINYINT DEFAULT 1,
UNIQUE (sub_id, student_id),
FOREIGN KEY (SubId) REFERENCES `subject` (SubId),
FOREIGN KEY (student_id) REFERENCES student (student_id)
);