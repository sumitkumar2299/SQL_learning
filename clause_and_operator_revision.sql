CREATE TABLE employees2 (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary NUMERIC(10,2),
    age INT,
    city VARCHAR(50),
    joining_date DATE,
    is_active BOOLEAN DEFAULT TRUE
);



INSERT INTO employees2 (emp_name, department, salary, age, city, joining_date, is_active)
VALUES
('Sumit', 'IT', 55000, 25, 'Delhi', '2022-01-10', TRUE),
('Rahul', 'HR', 35000, 28, 'Mumbai', '2021-03-15', TRUE),
('Amit', 'IT', 60000, 30, 'Delhi', '2020-07-20', TRUE),
('Neha', 'Finance', 45000, 27, 'Kolkata', '2023-02-10', TRUE),
('Priya', 'HR', 32000, 24, 'Delhi', '2022-09-01', FALSE),
('Rohit', 'Finance', 50000, 31, 'Mumbai', '2021-11-05', TRUE),
('Ankit', 'IT', 70000, 29, 'Delhi', '2019-06-18', TRUE),
('Pooja', 'HR', 33000, 26, 'Pune', '2022-12-25', TRUE),
('Vikas', 'IT', 52000, 28, 'Delhi', '2023-05-20', TRUE),
('Kiran', 'Finance', 48000, 32, 'Mumbai', '2020-08-30', FALSE);



select * from employees2
select emp_name, salary from employees2
select emp_name from employees2 where department = 'IT' 
select emp_name from employees2 where salary>50000
select emp_name from employees2 where age<30
select * from employees2 where joining_date between '2021-01-01' and '2023-12-31'
select * from employees2 where emp_name like 's%'
select * from employees2 where emp_name like 't%'
select * from employees2 where department = 'IT' and salary>50000 
select * from employees2 where department = 'HR' or department = 'finance'
select * from employees2 where city!= 'DELHI'



// previous concept 

select department, count(*) from employees2 group by department
select department, count(*) from employees2 group by department having count(*) >2
select emp_name from employees2 order by salary desc;
select emp_name from employees2 limit 5
select distinct city FROM employees2


select * from employees2 order by salary desc limit 1
select department, avg(salary) from employees2 group by department