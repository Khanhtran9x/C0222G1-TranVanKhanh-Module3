CREATE DATABASE  IF NOT EXISTS student_management;
USE student_management;

CREATE TABLE class(
class_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
class_name VARCHAR(60) NOT NULL,
start_date DATE NOT NULL,
`status` BIT
);
INSERT INTO class 
VALUES(1, 'A1', '2008-12-20', 1);
INSERT INTO class 
VALUES(2, 'A2', '2008-12-22', 1);
INSERT INTO class 
VALUES(3, 'B3', current_date, 0);

CREATE TABLE student(
student_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR(30) NOT NULL,
address VARCHAR(50),
phone VARCHAR(20),
`status` BIT,
class_id INT,
FOREIGN KEY (class_id) REFERENCES class(class_id)
);
INSERT INTO student(student_name, address,phone, `status`, class_id)
VALUES('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO student(student_name, address, `status`, class_id)
VALUES('Hoa', 'Hai phong', 1, 1);
INSERT INTO student(student_name, address,phone, `status`, class_id)
VALUES('Manh', 'HCM', '0123123123', 0, 2);

CREATE TABLE `subject`(
sub_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
sub_name VARCHAR(30) NOT NULL,
credit TINYINT NOT NULL DEFAULT 1 CHECK(credit >= 1),
`status` BIT DEFAULT 1
);
INSERT INTO `subject` 
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1); 	

CREATE TABLE mark(
mark_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
sub_id INT NOT NULL,
student_id INT NOT NULL,
mark FLOAT DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
exam_times TINYINT DEFAULT 1,
UNIQUE (sub_id, student_id),
FOREIGN KEY (sub_id) REFERENCES `subject` (sub_id),
FOREIGN KEY (student_id) REFERENCES student (student_id)
);
INSERT INTO mark (sub_id,student_id,mark,exam_times)
VALUES (1, 1, 8, 1),
       (2, 2, 10, 2),
       (3, 3, 12, 1);
       
SELECT * 
FROM student
WHERE status = true;

SELECT *
FROM student 
WHERE credit < 10;

SELECT s.student_id, s.student_name, c.class_name
FROM student s	JOIN class c ON s.class_id = c.class_id
WHERE c.class_name = 'A1';

SELECT s.student_id, s.student_name, s.sub_name, m.mark
FROM student s JOIN mark m ON s.student_id = m.student_id JOIN `subject` sub ON m.sub_id = sub.sub_id
WHERE sub.sub_name = 'CF';