-- Show number of customers per city.
select * from customers
select city,count(customer_id) as cust_count from customers group by city


-- Count orders per customer.
select * from customers
select * from orders
select DISTINCT customer_id,count(order_id) as order_per_customer from orders group by customer_id


-- Find total sales per store.
select * from order_items;
select * from orders;
select store_id,select ((quantity * list_price)*discount) from order_items 


-- Group products by category.
select * from products
select 
    category_id,product_id
from 
    products
group by category_id,product_id
order by category_id asc


-- Find average price per brand.
select * from brands
select * from products
select 
p.brand_id,b.brand_name,avg(p.list_price) 
from 
products as p
join 
brands as b 
on p.brand_id=b.brand_id 
group by p.brand_id,b.brand_name order by p.brand_id asc


-- Medium

-- 6. Show customers who placed more than 3 orders.
select * from customers
select * from orders
select customer_id,count(order_id) as order_placed 
from orders
group by customer_id
having count(order_id)=3
order by customer_id 


-- 7. Find stores having revenue > 1,00,000.


-- 8. Show products sold more than 50 times.
select * from products
select * from order_items
select 
DISTINCT product_id,count(quantity) as sold
from order_items
group by product_id 
having count(quantity)>50
order by product_id asc 


-- 9. Find categories having more than 10 products.
select * from products
select 
    DISTINCT category_id,count(product_id) as no_of_products
from 
    products
group by category_id
having count(product_id)>10
order by category_id asc


-- 10. Find staff handling more than 20 orders.



-- Advanced
-- 11. Customers whose total spending > average spending.
-- 12. Brands with revenue above overall average.
-- 13. Stores with sales below company average.
-- 14. Categories with highest average price.
-- 15. Customers who ordered from multiple stores.