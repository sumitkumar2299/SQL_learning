create table employee_system2(
emp_id serial primary key,
email varchar(50) unique not null, 
salary int default 1000, 
age int check(age between 18 and 60)
); 

insert into employee_system2(email,age)
values
('sumit@gmail.com',20);

select * from employee_system2