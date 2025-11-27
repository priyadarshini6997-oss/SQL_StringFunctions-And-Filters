create database dataDB;
use dataDB;
create table orders(
order_id int primary key,
product_name varchar(50),
quantity int,
price decimal(10,2),
event_name varchar(50),
event_date date
);
insert into orders(order_id, product_name, quantity, price, event_name, event_date)values
(1, 'Apple Laptop', 3, 55000, 'Diwali Sale', '2025-11-01'),
(2, 'AirPods', 1, 15000, 'New Year Offer', '2026-01-05'),
(3, 'Android Phone', 4, 25000, 'Summer Discount', '2025-04-12'),
(4, 'Keyboard', 2, 1200, 'Republic Sale', '2025-01-26'),
(5, 'Adapter', 5, 650, 'Flash Sale', '2025-12-18');
select * from orders
where quantity > 2;

select * from orders
where price between 100 and 500;

select * from orders
where product_name like 'A%';

select * from orders
order by quantity desc;

select concat(event_name,'-',event_date) as event_info
from orders;
