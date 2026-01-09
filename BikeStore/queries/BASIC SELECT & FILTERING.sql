-- Easy
set search_path to daily
-- Display all customers.
select * from 
daily.customers


-- Show customer first name, last name, and city.
select 
first_name,last_name,city
from daily.customers


-- List all products with price greater than 500.
select * from daily.products

select *
from daily.products
where list_price>500


-- Find customers from a specific state.
select 
* 
from customers

select DISTINCT state from customers

select 
customer_id,first_name,last_name,state  
from 
customers
group by customer_id,state
order by state 


-- Show orders placed after a given date.
select * FROM orders
where order_date>'2016-02-01'


-- Medium
-- 6. Display customers whose phone number is NULL.
select 
*
FROM
customers
where phone='NULL' 


-- 7. Show products belonging to a specific category.

select * from products;
select * from categories;

select product_id,product_name,category_id from products

SELECT
p.product_id,
p.product_name,
c.category_id,
c.category_name
from categories as c 
join products as p 
on c.category_id=p.category_id



-- 8. Find orders placed by a specific customer.

-- 9. List products with price between 500 and 1500.
select * from 
products 
where list_price BETWEEN 500 and 1500  

-- 10. Display staff working in a specific store.
select * from stores;
select * from staffs;

select 
sf.staff_id,
s.store_id,s.store_name
from stores as s 
join staffs as sf 
on s.store_id=sf.store_id


-- Advanced
-- 11. Find customers whose last name starts with ‘S’.
select * from customers

select 
*
from customers 
where last_name like 'S%'

-- 12. List orders not yet shipped.
select * from orders
select * from customers
select 
*FROM
orders
where shipped_date = NULL


-- 13. Find products not sold yet.
select * from products
select * from stocks

select 
DISTINCT 
product_id
from stocks


14. Show customers from multiple cities using IN.
15. Find orders placed in the last 30 days.