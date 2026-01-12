-- Easy
-- Join customers and orders.
select * from customers;
select * from orders
select * from customers as c join orders as o on c.customer_id=o.customer_id 

-- Join orders and order_items.
select * from orders;
select * from order_items 
select * from orders as o join order_items as ot on o.order_id=ot.order_id 


-- Join products and categories.
select * from Products;
select * from categories 
select * from products as p join categories as c on p.category_id=c.category_id 


-- Join products and brands.
select * from Products;
select * from brands 
select * from products as p join brands as b on p.brand_id=b.brand_id 

-- Join stores and staffs.
select * from stores;
select * from staffs 
select * from stores as s join staffs as sf on s.store_id=sf.store_id 


-- Medium
-- 6. Show customer name with order date.
select * from orders; 
select * from customers;
select first_name,last_name,order_date 
from orders as o JOIN customers as c 
on o.customer_id=c.customer_id 


-- 7. Display product name with category and brand.
select * from brands;
select * from categories;
select * from products
select p.product_id,p.product_name,c.category_name,b.brand_name
FROM products as p      
join categories as c on p.category_id=c.category_id
JOIN brands as b on p.brand_id=b.brand_id


-- 8. Show order details with product price.
select * from order_items;
select * from products;
select * from orders;
select o.order_id,p.product_id,p.product_name,o.quantity,o.list_price,(o.quantity*o.list_price*(1-o.discount)) as final_price
from products as p join order_items as o on p.product_id=o.product_id 


-- 9. Find staff who handled each order.
select * from products
select * from orders
select 
    o.staff_id,count(distinct o.order_id)
from 
    orders as o 
join 
    orders as os 
on os.order_id=o.order_id
group by o.staff_id

SELECT 
    s.staff_id,
    CONCAT(s.first_name, ' ', s.last_name) AS staff_name,
    COUNT(o.order_id) AS total_orders
FROM orders o
JOIN staffs s
ON o.staff_id = s.staff_id
GROUP BY s.staff_id, s.first_name, s.last_name;


-- 10. Display store name with total orders.

select * from stores;
select * from orders;
select store_name,count(order_id) as total_orders from stores as s join orders as o on o.store_id=s.store_id group by store_name 


-- Advanced
-- 11. Find total revenue per store.
select 


-- 12. Find total revenue per customer.
-- 13. Show best-selling products.
-- 14. Find category-wise revenue.
-- 15. Show staff performance (orders handled).

-- Interview
-- 16. Customers who never placed an order.
-- 17. Products never sold.
-- 18. Stores with no stock.
-- 19. Staff who never handled orders.
-- 20. Customers ordering from multiple stores.