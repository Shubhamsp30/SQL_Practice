-- Marketing wants a list of active customers(those who actually made purchases)
-- find customers who placed at least one order


-- using except(Not placed order)
select cust_id from customers.customers
except 
select DISTINCT cust_id from sales.orders


-- using not in(not placed order)
select cust_id,full_name from customers.customers
where cust_id not in(select distinct cust_id from sales.orders) 


-- 
select 
cust_id,
full_name
from 
customers.customers as c 
where 
EXISTS(
    select 1
    from sales.orders o
    where o.cust_id=c.cust_id
)


-- find customers with delivered orders(not pending)
select 
c.cust_id,
c.full_name
from customers.customers c
where EXISTS(
    select 1
    from sales.orders o
    where o.cust_id=c.cust_id
    and o.order_status='Delivered'
)
SELECt