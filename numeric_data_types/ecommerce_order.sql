CREATE TABLE ecommerce_order(
order_id SERIAL PRIMARY KEY, 
quantity INT,
price numeric(8,2), 
total_views BIGINT
);

INSERT INTO ecommerce_order(quantity, price,total_views)
VALUES
(20,80.50,9987456), 
(40,80.50,9987456), 
(60,80.50,9987456), 
(80,80.50,9987456);

SELECT * FROM ecommerce_order
SELECT quantity FROM ecommerce_order

SELECT * FROM ecommerce_order WHERE quantity>20
