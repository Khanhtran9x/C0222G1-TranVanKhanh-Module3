create database if not exists student_management;
use student_management;
create table class	(
id int not null,
`name` varchar(20) null,
primary key(id)
);
create table teacher(
id int not null,
`name` varchar(20), 
age int null,
country varchar(20) not null,
primary key(id)
);

insert into class values(1, 'Tran Van Khanh');
insert into class values(2, 'Tran Ngoc Khanh');
update class set `name` = 'Nguyen Van Dong' where id = 1;
insert into class values(3, 'Tran Ngoc Phuc');
delete from class where id = 2;
insert into class values(4, 'Hoang Huyen');

alter table class add column age int;
update class set age = 18 where id = 1;
