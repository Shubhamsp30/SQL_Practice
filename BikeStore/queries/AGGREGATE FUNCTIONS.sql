-- set search_path to daily
-- Easy

-- Count total customers.
select * from customers
select  count(customers) as total_customers from customers


-- Find total number of products.
select * from products 
select DISTINCT product_id from products
select count(product_id) from products


-- Find average product price.
select * from products
select avg(list_price) from products


-- Find minimum and maximum product price.
select * from products
select min(list_price) as min_price,max(list_price) as max_price from products


-- Count total orders.
select * from orders
select DISTINCT count(order_id) from orders


-- Medium

-- 6. Count orders per store.
select * from orders 
select store_id,count(order_id) as count_of_orders from orders group by store_id 
select * from stores
select 
    o.store_id,s.store_name,count(o.order_id) as count_of_orders 
from 
        orders as o 
    join
        stores as s 
    on o.store_id=s.store_id 
group by o.store_id,s.store_name
order by o.store_id asc 


-- 7. Calculate total revenue (using order_items).
SELECT
    SUM(quantity * list_price * (1 - discount)) AS total_revenue
FROM order_items;


-- 8. Find average order value.
SELECT
    AVG(order_total) AS avg_order_value
FROM (
    SELECT
        order_id,
        SUM(quantity * list_price * (1 - discount)) AS order_total
    FROM order_items
    GROUP BY order_id
) AS order_totals;



-- 9. Count number of products per category.
select *from products
select category_id,count(product_id) as count_of_product from products group by category_id
select * from categories
select 
    p.category_id,c.category_name,count(p.product_id) as count_of_product
from 
    products as p
    join 
    categories as c 
    on p.category_id=c.category_id 
group by p.category_id,c.category_name
order by p.category_id asc

-- 10. Count staff per store.
select * from staffs
select store_id,count(staff_id) as count_of_staff from staffs group by store_id order by store_id asc 


-- Advanced

-- 11. Find total revenue per brand.
select * from brands
select * from products
select brand_id,sum(list_price) as total_revenue_brand from products group by brand_id order by brand_id asc 

select 
    p.brand_id,b.brand_name,sum(p.list_price) as total_revenue_brand 
FROM
    products as p 
join 
    brands as b 
    on p.brand_id=b.brand_id 
group by p.brand_id,b.brand_name 
order by total_revenue_brand desc 


-- 12. Find store with highest sales.
SELECT
    s.store_id,
    s.store_name,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS total_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN stores s ON o.store_id = s.store_id
GROUP BY s.store_id, s.store_name
ORDER BY total_sales DESC
LIMIT 1;


-- 13. Calculate average discount given.
SELECT
    AVG(discount) AS avg_discount
FROM order_items;

-- 14. Find total quantity sold per product.
SELECT
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC;

-- 15. Find customer count per city.
SELECT
    city,
    COUNT(customer_id) AS customer_count
FROM customers
GROUP BY city
ORDER BY customer_count DESC;
