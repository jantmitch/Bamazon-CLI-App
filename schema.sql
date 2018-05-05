DROP DATABASE IF EXISTS bamazon_DB

CREATE DATABASE bamazon_DB

USE bamazon_DB;


CREATE TABLE products (
id INT AUTO_INCREMENT NOT NULL,
product_name TEXT NOT NULL, 
department_name TEXT NOT NULL,
price DECIMAL (30,2) NOT NULL,
stock_quantity INT NOT NULL,

PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Vizio 55 TV", "Electronics", 250, 2), ("PS4", "Gaming", 200, 3), ("Harry Potter Book Set", "Books", 60, 1), ("Vibranium", "Mineral", 100000, 1), ("Autographed Braves Jersey", "Sports", 65.50, 1), ("1 Oz Gold", "Mineral", 2000, 2), ("1984", "Books", 12, 1), ("FIFA 2018", "Gaming", 23.99, 2), ("Amazon Fire Stick", "Electronics", 40, 4), ("Tiger Woods Autographed Golf Ball", "Sports", 1000, 1);