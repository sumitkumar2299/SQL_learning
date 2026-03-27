create table timepass(
id serial primary key,
name varchar, 
price int,
registration_number bigint,
last_updated timestamp default now()
); 

insert into timepass(name,price)
values
('sumit', 45)

select * from timepass

