create table flipkart_db(
product_id serial primary key,
name varchar(50) not null, 
sku_code char(8) unique not null, 
price numeric(10,2) check(price>0),
stock_quantity int default 0 check(stock_quantity>=0),
is_available boolean default true,
category varchar(50) not null,
added_on date default current_date,
last_update timestamp default now()
); 



