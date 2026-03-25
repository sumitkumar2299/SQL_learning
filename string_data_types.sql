create table employee_system(
emp_id serial primary key, 
emp_code char(5), 
email varchar(50),
bio text
); 

insert into employee_system(emp_code,email,bio)
values
('abcde','rahul@gmail.com','learning development');
select * from employee_system


create table product_catalouge(
product_code char(20), 
product_name varchar(50), 
description text
); 


create table user_registration_program(
username char(20),
password varchar(8),
address text
); 

create table library_system(
isbn char(13),
title text,
summary text
); 


create table student_feedback_system(
student_name varchar(100),
course_code char(10),
feedback text
); 


