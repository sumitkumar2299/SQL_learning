create table student_system(
student_id serial primary key, 
name varchar(50),
date_of_birth date,
login_time time
); 

insert into student_system(date_of_birth,login_time)
values
('05-07-2003','10:30:00'); 


create table ecommerce_order(
order_id serial primary key,
order_created_at timestamp,
delivery_time time
); 



create table event_name(
event_name varchar(50), 
event_time timestamp
); 

create table work_duration(
employee_name varchar(50),
login_time time,
logout_time time,
duration interval
); 