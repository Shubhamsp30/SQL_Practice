-- find customers who place at least one order

select 
count(DISTINCT cust_id)
from "customers"."customers"

select 
count(DISTINCT cust_id)
from "sales"."orders"


select 
full_name
from "customers"."customers"
where 
    cust_id in (select cust_id from"sales"."orders")


-- Find employees earning above the average salary
-- step1=calculate the avg salary
-- step2= compare the calculated salary for all employess

select 
avg(salary) as avg_salary
from "stores"."employees"

select employees.emp_name,employees.salary 
from stores.employees
where employees.salary>(select 
avg(salary) as avg_salary
from "stores"."employees")


-- find products that were never ordered
select 
*
from "sales"."order_items"

select 
products.prod_name
from "products"."products"
where   
    products.prod_id not in (
        select products.prod_id from sales.order_items
    )

select 
count(DISTINCT prod_id)
from products.products

select 
count(DISTINCT prod_id)
from sales.order_items


-- Find employees whose salary is above average of their department(correlated)