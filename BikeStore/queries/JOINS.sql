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
select * from stores
select * from products
select * from order_items;
select * from orders;
select o.store_id,s.store_name,sum(ot.quantity*ot.list_price*(1-ot.discount)) from orders as o
join order_items as ot on o.order_id=ot.order_id
join Stores as s on o.store_id=s.store_id
group by o.store_id,s.store_name


-- 12. Find total revenue per customer.
Select * from order_items;
select * from products;
select * from orders

-- 13. Show best-selling products.
select * from order_items;
select * from products;
select distinct ot.product_id,p.product_name,count(ot.order_id),sum(ot.quantity*ot.list_price*(1-ot.discount)) as total_sales from products as p join order_items as ot on p.product_id=ot.product_id
group by ot.product_id,p.product_name 
order by total_sales  DESC


-- 14. Find category-wise revenue.
select * from categories;
select * from products
select DISTINCT c.category_id,count(p.product_id)as count_product,sum(p.list_price) as revenue from products as p join categories as c on p.category_id=c.category_id
group by c.category_id
order by c.category_id desc 

-- 15. Show staff performance (orders handled).



-- Interview
-- 16. Customers who never placed an order.
select * from customers
select DISTINCT customer_id from customers
select * from orders
select DISTINCT order_id from orders
select * from orders;
select * from customers


select c.customer_id,c.first_name,c.last_name
from 
    customers as c 
left join 
    orders as o
on 
    c.customer_id=o.customer_id 
where order_id IS NULL

SELECT 
    customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id FROM orders
);

-- 17. Products never sold.
select * from order_items;
select * from products;
select * from orders;
select order_id,product_id,product_name from Products as p left join orders as o p.

select p.product_id,p.product_name 
from 
products as p 
left join 
order_items as ot on
p.product_id=ot.product_id 
where ot.product_id is NULL


-- 18. Stores with no stock.
select * from stocks;
select * from stores
select 
    s.store_id,s.store_name
FROM stores as s 
left join stocks as st
on s.store_id=st.store_id 
where st.store_id is null 

SELECT 
    s.store_id,
    s.store_name
FROM stores s
LEFT JOIN stocks st
ON s.store_id = st.store_id
WHERE st.store_id IS NULL;


-- 19. Staff who never handled orders.
-- 20. Customers ordering from multiple stores
