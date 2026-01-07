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
set search_path to stores
select 
* 
from 
stores.employees

select 
dept_id,
avg(salary)
from 
stores.employees
GROUP by dept_id

select 
emp_id,
emp_name,
dept_id,
salary
from 
stores.employees as o_e
where salary>(
    select avg(i_e.salary)
    from stores.employees as i_e
    where o_e.dept_id=i_e.dept_id
)
order by o_e.dept_id


-- find stores whose total sales are above the average sales across all stores(hard)
step 1 = average sales across all the stores
step 2 = compare the sales of each store with average STORAGE

SELECT
store_id,
sum(total_amount)
FROM 
sales.orders
GROUP by store_id

SELECT * from sales.orders as o 

SELECT 
    avg(total_sales)
FROM
(
    SELECT store_id, sum(total_amount) as total_sales
    FROM sales.orders
    GROUP by store_id
)o


SELECT store_id, sum(total_amount) as total_sales
FROM sales.orders
GROUP by store_id
having sum(total_amount)>(
    SELECT avg(total_sales) 
    FROM
    (
        SELECT store_id, sum(total_amount) as total_sales
        FROM sales.orders
        GROUP by store_id
    )o
)


-- Find employees who are the highest earners in  their department


select 
* 
from 
stores.employees

select 
dept_id,sum(salary)
from 
stores.employees
GROUP BY dept_id



-- 
select 
emp_id,
emp_name,
dept_id,
salary
from 
stores.employees as o_e
where salary=(
    select max(i_e.salary)
    from stores.employees as i_e
    where o_e.dept_id=i_e.dept_id
)
order by o_e.dept_id


