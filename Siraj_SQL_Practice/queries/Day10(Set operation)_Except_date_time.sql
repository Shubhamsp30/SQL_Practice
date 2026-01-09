-- Find products that were never purchased
SELECT
prod_id,prod_name
FROM
products.products

select 
* 
FROM
sales.order_items



select * from products.products
insert into products.products
values(1217,'Demo','Grocery','Tata',45,65116)

select 
prod_id
from products.products
EXCEPT
select prod_id from sales.order_items


-- Find employess not presesnt in the attendance log for a data range
select 
emp_id FROM
stores.employees
EXCEPT
select DISTINCT emp_id FROM hr.attendance



select 
    extract(year from CURRENT_TIMESTAMP) as year,
    extract(month from CURRENT_TIMESTAMP) as month,
    extract(day from CURRENT_TIMESTAMP) as day,
    extract(dow from CURRENT_TIMESTAMP) as day_of_week,
    extract(doy from CURRENT_TIMESTAMP) as day_of_year



-- Find customers who ordered in Q1 but not in Q2

select 
DISTINCT cust_id
from sales.orders
where extract(quarter from order_date)=1 and EXTRACT(year from order_date)=2025
EXCEPT
select 
DISTINCT cust_id
from sales.orders
where extract(quarter from order_date)=2 and EXTRACT(year from order_date)=2025


