create database student_management;
use student_management;
create table student(
id int not null,
`name` varchar(20) null,
age int null,
country varchar(20) null,
primary key(id)
);