create table department(
department_id int primary key, 
department_name varchar(50)
); 

create table worker(
employee_id int primary key, 
name varchar(50), 
department_id int, 
foreign key(department_id) references department(department_id)
); 

insert into department(department_id, department_name)
values
(1,'sumit'),
(2,'rahul'),
(3,'gaurav')


insert into worker(employee_id,name,department_id)
values
(1,'sumit',1)


select * from department
select * from worker
