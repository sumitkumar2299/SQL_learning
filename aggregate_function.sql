CREATE TABLE products_agg (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(8,2),
    stock INT,
    rating NUMERIC(2,1)
);


INSERT INTO products_agg(product_name, category, price, stock, rating)
VALUES
('Laptop', 'Electronics', 55000, 10, 4.5),
('Mobile', 'Electronics', 20000, 20, 4.2),
('Tablet', 'Electronics', 18000, 15, 4.0),
('Shoes', 'Fashion', 3000, 40, 4.3),
('Watch', 'Fashion', 2500, 25, 4.1),
('T-shirt', 'Fashion', 1200, 50, 3.9),
('Refrigerator', 'Appliances', 35000, 5, 4.4),
('Microwave', 'Appliances', 12000, 8, 4.2),
('Headphones', 'Electronics', 1500, 30, 4.1),
('Jeans', 'Fashion', 2200, 35, 4.0);



-- // select total number of products 

select count(*) from products_agg

-- count number of products in each category 

select category,count(*) from products_agg group by category


-- count products where price>1000000

select count(*) from products_agg where price>10000


-- 🔹 SUM()

-- Find total stock of all products
select sum(stock) from products_agg


-- Find total stock in each category
select category, sum(stock) from products_agg group by category


-- Find total price of Electronics products
select sum(price) from products_agg where category = 'Electronics'

-- 🔹 AVG()


-- Find average price of all products
select avg(price) from products_agg



-- Find average price in each category
select avg(price) from products_agg group by category; 


-- Find average rating of Electronics products
select avg(rating) from products_agg where category = 'Electronics'

-- 🔹 MIN()


-- Find cheapest product price

select min(price) from products_agg



-- Find minimum price in each category
select min(price) from products_agg group by category

-- 🔹 MAX()


-- Find highest price product
select max(price) from products_agg


-- Find maximum stock available
select max(stock) from products_agg



-- Find most expensive product in each category
select category,max(price) from products_agg group by category


-- 🔥 Mixed Questions (Very Important)


-- Show categories having more than 2 products
select category, count(*) from products_agg group by category having count(*)>2



-- Show categories where total stock > 50

select category,SUM(stock) from products_agg group by category having sum(stock)>50; 

-- Show category with highest average price

select category, avg(price) from products_agg group by category order by avg(price) desc limit1

-- Show total number of products with rating > 4

-- 🚀 Bonus (Interview Level)


-- Find difference between highest and lowest price



-- Show total stock and average price of each category
