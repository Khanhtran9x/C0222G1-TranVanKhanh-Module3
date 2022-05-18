-- B1
CREATE DATABASE demo;
USE demo;

-- B2
CREATE TABLE products(
id INT PRIMARY KEY AUTO_INCREMENT PRIMARY KEY,
product_code VARCHAR(20) UNIQUE,
product_name VARCHAR(50),
product_price DOUBLE,
product_amount INT, 
product_description VARCHAR(100),
product_status VARCHAR(200)
);

INSERT INTO products (product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES ('132131', 'Apple', 1000, 20, 'Iphone 11 promax', 'Instock'),
       ('123213', 'Samsung', 700, 15, 'Note 8', 'Instock'),
       ('321312', 'Xiaomi', 500, 50, 'Ultra 11', 'Instock');

-- B3
CREATE INDEX index_1 ON products(product_name, product_price);

DROP INDEX index_1 ON products;

EXPLAIN SELECT * FROM products WHERE product_name = 'Apple';

-- B4
CREATE VIEW view_1 AS 
SELECT product_code, product_name, product_price, product_status
FROM products;

SELECT * FROM demo.view_1;

ALTER VIEW view_1
AS
SELECT product_code, product_name, product_price
FROM products;

DROP VIEW view_1;

-- B5
-- GET ALL INFO
DELIMITER $$
CREATE PROCEDURE p_get_all()
BEGIN
SELECT *
FROM products;
END $$
DELIMITER ;
CALL p_get_all();

-- ADD NEW
DELIMITER $$
CREATE PROCEDURE p_add_new_product(product_code VARCHAR(50), 
                                product_name VARCHAR(50),
                                product_price DOUBLE,
                                product_amount INT,
                                product_description VARCHAR(50),
                                product_status VARCHAR(50))
BEGIN
INSERT INTO products (product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES (product_code, product_name, product_price, product_amount, product_description, product_status);
END $$
DELIMITER ;
CALL p_add_new_product('8123123', 'Oppo', 400, 30, 'Oppo R6', 'Instock');

-- EDIT
DELIMITER $$
CREATE PROCEDURE p_edit_product(product_id INT, 
                                product_code VARCHAR(50), 
                                product_name VARCHAR(50),
                                product_price DOUBLE,
                                product_amount INT,
                                product_description VARCHAR(50),
                                product_status VARCHAR(50))
BEGIN
UPDATE products p
SET p.product_code = product_code,
    p.product_name = product_name,
    p.product_price = product_price,
    p.product_amount = product_amount,
    p.product_description = product_description,
    p.product_status = product_status
WHERE p.id = product_id;
END $$
DELIMITER ;
CALL p_edit_product(2, '32231234', 'Nokia', 400, 10, 'Nokia N6', 'Instock');

-- DELETE
DELIMITER $$
CREATE PROCEDURE p_delete_product(product_id INT)
BEGIN
DELETE FROM products p
WHERE p.id = product_id;
END $$
DELIMITER ;
CALL p_delete_product(4);