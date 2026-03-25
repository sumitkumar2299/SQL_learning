create table user_registration_system(
id serial primary key,
username varchar(50) not null,
email varchar(100) unique,
created_at timestamp default now()
); 


insert into user_registration_system(username,email)
values
('sumit','sumitkum803202@gmail.com'),
('rahul','sumitkum85sdf@gmail.com');


select * from user_registration_system





create table student_system2(
id serial primary key,
name varchar(50) not null, 
age int check(age>18)
); 

insert into student_system2(name,age)
values
('sumit',22),
('rahul',22);

select * from student_system2;
select name from student_system2



create table ecommerce_system(
product_id serial primary key,
product_name varchar(50) not null,
price numeric
); 

insert into ecommerce_system(product_name,price)
values
('toothpaste',50),
('toothbrush',60)

