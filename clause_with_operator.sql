create table employees(
id serial primary key, 
emp_name varchar(50) not null,
department varchar(50) not null, 
salary numeric
); 
insert into employees(emp_name,department, salary)
values

('sumit', 'cse(iot)',80000),
('rahul', 'cse(iot)',90000),
('amrit', 'cse(iot)',60000)


select * from employees
select emp_name from employees 

update  employees 
set emp_name = 'gukesh'
where emp_name = 'rahul'; 

