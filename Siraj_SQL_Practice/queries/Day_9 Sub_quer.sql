-- Find Customers who placed at least one order

select count(DISTINCT cust_id) from Customers.customers
select count(DISTINCT cust_id) from Sales.orders
