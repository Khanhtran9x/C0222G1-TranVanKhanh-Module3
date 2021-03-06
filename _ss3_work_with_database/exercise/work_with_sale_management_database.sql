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

select o_id, o_date, o_total_price
from `order`;

select c.c_id, c.c_name, p.p_name
from customer c join `order` o on c.c_id = o.c_id, 
`order` d join order_detail od on d.o_id = od.o_id,
order_detail ode join product p on ode.p_id = p.p_id
GROUP BY c.c_id;

select c.c_id, c.c_name
from customer c
where not exists (select null from `order` o where o.c_id = c.c_id);

select od.o_id, o.o_date, sum(od_qty * p.p_price) as total_price
from order_detail od 
join `order` o on od.o_id = o.o_id 
join product p on od.p_id = p.p_id
group by od.o_id;