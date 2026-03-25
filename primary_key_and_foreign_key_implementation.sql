create table foreign_key(
id serial primary key, 
name varchar(50)
); 

create table orders(
order_id serial primary key, 
user_id int references foreign_key(id), 
amount numeric
); 


insert into foreign_key(name)
values
('sumit');

insert into orders(user_id,amount)
values
(1, 50.00); 


insert into orders(user_id, amount)
values
(5, 300.00); 


