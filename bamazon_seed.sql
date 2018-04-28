DROP DATABASE IF EXISTS Bamazon;
CREATE database Bamazon;

USE Bamazon;

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR (45),
    department_name VARCHAR (55),
    price decimal (8,3),
    stock_quantity int (5),
    PRIMARY KEY(id)
);

Insert into products (product_name, department_name, price, stock_quantity)
values ("iphone charger", "electronics", 10, 100);

Insert into products (product_name, department_name, price, stock_quantity)
VALUES ("the witcher video game", "electronics", 60, 40);

Insert into products (product_name, department_name, price, stock_quantity)
VALUES ("Yeezys", "men", 700, 5);

Insert into products (product_name, department_name, price, stock_quantity)
VALUES ("bar of soap", "home", 5, 20);

Insert into products (product_name, department_name, price, stock_quantity)
VALUES ("foot cream", "health and beauty", 15, 20);

Insert into products (product_name, department_name, price, stock_quantity)
VALUES ("Soccer ball", "Sporting Goods", 20, 25);

Insert into products (product_name, department_name, price, stock_quantity)
VALUES ("Basket ball", "Sporting Goods", 10, 13);
Insert into products (product_name, department_name, price, stock_quantity)
VALUES ("Beats headphones", "electronics", 200, 5);

Insert into products (product_name, department_name, price, stock_quantity)
VALUES ("Body Spray", "men", 10, 40);

Insert into products (product_name, department_name, price, stock_quantity)
VALUES ("Flat Screen TV", "Electronics", 1000, 15);