CREATE TABLE banking_system(
account_id serial primary key,
balance NUMERIC(8,2), 
interest_rate double precision, 
transactions_count INT
); 


INSERT INTO banking_system(balance,interest_rate,transactions_count)
values
(235.45,3.75,10), 
(245.45,3.75,20), 
(255.45,3.75,30), 
(265.45,3.75,40), 
(275.45,3.75,50);


select * from banking_system
select balance from banking_system
select balance from banking_system where transactions_count>10


update banking_system 
set balance = 855.88
where transactions_count = 20

select * from banking_system




