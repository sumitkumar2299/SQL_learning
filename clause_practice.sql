create table customer(
customer_id serial primary key,
name varchar(50) not null,
email varchar(100) unique,
city varchar(100),
created_at timestamp default now()
); 

create table products(
product_id serial primary key,
product_name varchar(100) not null,
category varchar(50),
price numeric(8,2) check(price>0), 
in_stock boolean default true
); 

create table order1(
order_id serial primary key,
customer_id int references customer(customer_id),
product_id int references products(product_id),
quantity int check(quantity>0), 
order_date date default current_date
); 


insert into customer(name,email,city)
values
('rahul','rah@123.com','patna'),
('rohit','@123.com','gaya'),
('sumit','sum@123.com','motihari'),
('amrit','rahah@123.com','vaishali')



INSERT INTO products(product_name,category,price,in_stock)
VALUES
('Laptop','Electronics',55000,TRUE),
('Mobile','Electronics',20000,TRUE),
('Shoes','Fashion',3000,TRUE),
('Watch','Fashion',2500,FALSE),
('Tablet','Electronics',18000,TRUE);



INSERT INTO order1(customer_id,product_id,quantity)
VALUES
(1,1,1),
(1,2,2),
(2,3,1),
(3,1,1),
(4,5,1);


select product_name,price from products; 
select product_name from products where category = 'Electronics';
select category from products group by category;
select category,count(*) from products group by category having count(*)>1
select product_name from products order by price asc;
select * from products limit 3; 
select product_name as item_name, price as item_price from products;
select distinct category from products;

