create table product_inventory(
product_id serial primary key, 
stock_quantity int,
price numeric, 
discount_percentage real
);


select * from product_inventory;
insert into product_inventory(stock_quantity, price,discount_percentage)
values
(20,56,5.3),
(20,58,98.6),
(90,57,77)

select price from product_inventory;
select discount_percentage from product_inventory where price>50; 

update product_inventory
set price = 88.7 
where stock_quantity = 20; 