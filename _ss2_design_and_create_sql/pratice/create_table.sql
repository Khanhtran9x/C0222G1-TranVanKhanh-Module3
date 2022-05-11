CREATE DATABASE score_management;
USE score_management;
CREATE TABLE student(
student_code VARCHAR(20) PRIMARY KEY,
student_name VARCHAR(50),
date_of_birth DATETIME,
class VARCHAR(20),
observer VARCHAR(20)
);
CREATE TABLE subjects(
subject_code VARCHAR(20) PRIMARY KEY,
subject_name VARCHAR(50)
);
CREATE TABLE score(
student_code VARCHAR(20),
subject_code VARCHAR(20),
score INT,
finish_date DATETIME,
PRIMARY KEY (student_code, subject_code),
FOREIGN KEY (student_code) REFERENCES student(student_code),
FOREIGN KEY (subject_code) REFERENCES subjects(subject_code)
);
CREATE TABLE teacher(
teacher_code VARCHAR(20) PRIMARY KEY,
teacher_name VARCHAR(50),
phone_number VARCHAR(10)
);
ALTER TABLE subjects ADD teacher_code VARCHAR(50);
ALTER TABLE subjects ADD CONSTRAINT fk_teacher_code FOREIGN KEY (teacher_code) REFERENCES teacher(teacher_code);
