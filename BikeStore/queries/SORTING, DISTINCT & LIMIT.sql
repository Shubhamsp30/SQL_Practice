-- set search_path to daily


-- Sort customers by last name.
select * 
FROM customers
select * from customers order by last_name


-- Display top 5 most expensive products.
select * from products
select * from products order by list_price desc limit 5


-- Show distinct customer cities.
select * from customers
select DISTINCT city from customers


-- Sort orders by order date (latest first).
select * from orders
select * from orders order by order_date desc


-- Display top 3 recently hired staff.
select * from staffs


-- List products sorted by price descending.
select * from products
select * from products order by list_price desc


-- Show first 10 customers alphabetically.
select * from customers
select * from customers order by first_name asc limit 10


-- Get distinct product categories.
select * from products 
select DISTINCT category_id from products order by category_id ASC
-- using joins 
SELECT DISTINCT c.category_id, c.category_name
FROM categories c
JOIN products p
ON c.category_id = p.category_id
ORDER BY c.category_name;


-- Display stores sorted by store name.
select * from stores
select * from stores order by store_name 


-- Find top 5 cheapest products.
select * from products
select * from products order by list_price asc limit 5 