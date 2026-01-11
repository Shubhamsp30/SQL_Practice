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
select * from customers;
select * from orders 


-- 7. Display product name with category and brand.
-- 8. Show order details with product price.
-- 9. Find staff who handled each order.
-- 10. Display store name with total orders.

-- Advanced
-- 11. Find total revenue per store.
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