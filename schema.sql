DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
  item_id INT AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(45) NOT NULL,
  product_sales DECIMAL(10,2) DEFAULT 0,
  department_name VARCHAR(45) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT(10) NOT NULL,
  primary key(item_id)
);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Football", "Sporting Goods", 12.88, 15),
  ("Baseball Glove", "Sporting Goods", 75.00, 10),
  ("Bottled Water", "Food and Drink", 6.99, 200),
  ("Sunglasses", "Apparel", 125.00, 25),
  ("T-Shirts", "Apparel", 14.00, 35),
  ("Toilet Paper", "Necessities", 20.99, 100),
  ("1917", "Movies", 25.50, 60),
  ("Avengers: Endgame", "Movies", 25.50, 60),
  ("Television", "Electronics", 699.99, 20),
  ("IPad", "Electronics", 399.59, 20);

  CREATE TABLE departments(
  department_id INT AUTO_INCREMENT NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  over_head_costs DECIMAL(10,2) NOT NULL,
  primary key(department_id)
);

SELECT * FROM departments;

INSERT INTO departments (department_name, over_head_costs)
VALUES ("Movies", 200),
  ("Food and Drink", 100),
  ("Apparel", 50),
  ("Necessities", 300),
  ("Electronics", 35),
  ("Sporting Goods", 10);