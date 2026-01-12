-- Products priced above average price.
select * from Products
select avg(list_price) as avg_price from Products 
select product_id,product_name,list_price 
from Products
where list_price>(select avg(list_price) as avg_price from Products)


-- Customers who placed more orders than average.
select * from customers;
select * from orders;
select c.customer_id,c.first_name,c.last_name,count(order_id) 
from orders as o 
join customers as c 
on o.customer_id=c.customer_id 
group by c.customer_id,c.first_name,c.last_name
having count(order_id)>(select avg(order_count)from (SELECT count(order_id) as order_count from orders group by customer_id)) 






-- Orders with value higher than average order value.


-- Products belonging to most sold category.

-- Stores with sales higher than best-performing store average.

-- Advanced
-- 6. Customers who spent more than city average.
-- 7. Products contributing to top 10% revenue.
-- 8. Staff with highest number of orders.
-- 9. Categories with revenue below overall average.
-- 10. Stores with lower sales than all others.

-- Interview
-- 11. Customers who bought most expensive product.
-- 12. Products sold only once.
-- 13. Stores with stock less than average stock.
-- 14. Customers who ordered but never reordered.
-- 15. Products contributing more than 5% of revenue.