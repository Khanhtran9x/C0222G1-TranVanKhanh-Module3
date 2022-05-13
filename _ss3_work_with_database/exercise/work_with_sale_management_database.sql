create database quan_ly_ban_hang;
use quan_ly_ban_hang;

create table customer(
c_id int primary key,
c_name varchar(50),
c_age int
);
insert into customer
values(1, 'Minh Quan', 10),
	  (2, 'Ngoc Oanh', 20),
      (3, 'Hong Ha', 50);

create table `order`(
o_id int primary key,
c_id int, 
o_date date,
o_total_price int,
foreign key(c_id) references customer(c_id)
);
insert into `order` (o_id,c_id, o_date)
values(1, 1, '2006-03-21'),
	  (2, 2, '2006-03-23'),
	  (3, 1, '2006-03-16');

create table product(
p_id int primary key,
p_name varchar(50),
p_price int
);
insert into product 
values(1, 'May Giat', 3),
      (2, 'Tu Lanh', 5),
	  (3, 'Dieu Hoa', 7),
      (4, 'Quat', 1),
      (5, 'Bep Dien', 2);

create table order_detail(
o_id int,
p_id int,
od_qty int,
foreign key(o_id) references `order`(o_id),
foreign key(p_id) references product(p_id)
);
insert into order_detail 
values(1, 1, 3),
      (1, 3, 7),
      (1, 4, 2),
      (2, 1, 1),
      (3, 1, 8),
      (2, 5, 4),
      (2, 3, 3);