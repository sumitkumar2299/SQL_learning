CREATE TABLE student_system(
id SERIAL PRIMARY KEY, 
age SMALLINT,
marks NUMERIC(5,2), 
attendence REAL
);

INSERT INTO student_system(age,marks,attendence)
values
(22,88.85,90.0),


SELECT * FROM student_system;