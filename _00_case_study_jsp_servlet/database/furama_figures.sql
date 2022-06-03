USE furama;

INSERT INTO `position`
VALUES (1, 'Receptionist'),
	   (2, 'Waiter'),
       (3, 'Expert'),
       (4, 'Supervisor'),
       (5, 'Manager'),
       (6, 'Director');
       
INSERT INTO customer_type
VALUES (1, 'Diamond'),
	   (2, 'Platinum'),
       (3, 'Gold'),
       (4, 'Silver'),
       (5, 'Member');

INSERT INTO education_degree
VALUES (1, 'Intermediate'),
       (2, 'College'),
       (3, 'University'),
       (4, 'After university');
       
INSERT INTO division
VALUES (1, 'Sale marketing'),
       (2, 'Administration'),
       (3, 'Serving'),
       (4, 'Manager');

INSERT INTO username
VALUES ('benzemano1', 'realno1'),
       ('marcelopro', 'realno2'),
       ('dejongcute', 'barcano1');
       
INSERT INTO employee
VALUES (1, 'Kazim Benzema', '1993-01-01', '1945312334', 5000 ,'09413232287', 'benzama@gmail.com', 'Quang Binh', 1, 2, 3, 'benzemano1'),
       (2, 'Marcelo', '1992-05-01', '1945312168', 4000 ,'094132323121', 'marcelo@gmail.com', 'Quang Tri', 2, 2, 4, 'marcelopro'),
       (3, 'Dejong', '1998-10-01', '1945311687', 4500 ,'094132312312', 'dejong@gmail.com', 'Hue', 3, 1, 2, 'dejongcute');

INSERT INTO customer
VALUES (1, 1, 'Khanh Tran', '1995-01-01', 0, '194531021', '09413232131', 'khanh@gmail.com', 'Quang Binh'),
       (2, 2, 'Nguyen Lien', '1983-07-01', 1, '194531313', '09265646814', 'lien@gmail.com', 'Da Lat'),
       (3, 4, 'Kha Nguyen', '1994-08-14', 0, '194531313', '09413234321', 'kha@gmail.com', 'Quang Ngai'),
       (4, 3, 'Ha Vu', '1995-05-16', 0, '1945312342', '09413224141', 'vuha@gmail.com', 'Bac Lieu'),
       (5, 1, 'Khanh Nguyen', '1995-05-05', 0, '194534314', '09413235423', 'khanhnguyen@gmail.com', 'Hue');
       
INSERT INTO customer (customer_type_id, customer_name, customer_birthday, customer_gender, customer_id_card, customer_phone, customer_email,customer_address) 
VALUES (5, 'Nguyen Nguyen', '1973-01-01', 1, '194531431', '09413243234', 'nguyen@gmail.com', 'Binh Thuan');