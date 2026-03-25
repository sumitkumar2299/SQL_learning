CREATE TABLE products1 (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price NUMERIC(8,2),
    stock INT,
    in_stock BOOLEAN
);


INSERT INTO products1 (product_name, category, price, stock, in_stock)
VALUES
('Laptop', 'Electronics', 55000, 10, TRUE),
('Mobile', 'Electronics', 20000, 25, TRUE),
('Tablet', 'Electronics', 18000, 15, TRUE),
('Shoes', 'Fashion', 3000, 50, TRUE),
('Watch', 'Fashion', 2500, 0, FALSE),
('T-shirt', 'Fashion', 1200, 40, TRUE),
('Refrigerator', 'Appliances', 35000, 5, TRUE),
('Microwave', 'Appliances', 12000, 8, TRUE),
('Headphones', 'Electronics', 1500, 30, TRUE),
('Jeans', 'Fashion', 2200, 20, TRUE);


select product_name,price from products1; 
select product_name from products1 where category = 'Electronics'; 
select product_name, count(*) from products1 group by product_name;
select category, count(*) from products1 group by category having count(*)>2;
select product_name from products1 order by price asc; 
select product_name from products1 limit 5;
select product_name as item_name, price as item_price from products1;
select distinct category from products1;


