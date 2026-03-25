create table user_account_system(
user_id serial primary key,
username varchar(50),
is_active boolean
); 

insert into user_account_system(username,is_active)
values
('sumit',FALSE); 
select * from user_account_system;
select * from user_account_system where is_active = FALSE; 
select * from user_account_system where is_active = TRUE;


create table ecommerce_orders(
order_id serial primary key,
is_paid boolean,
is_delivered boolean
); 


create table student_result(
student_name varchar(50),
has_passed boolean
); 



create table job_portal(
job_title text,
is_remote boolean,
is_open boolean
); 


create table subscription_system(
user_name varchar(50),
is_subscribed boolean,
auto_renew boolean
); 
