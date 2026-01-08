-- No of orders for each status 
select 
* 
FROM
sales.orders

select 
order_status,
count(order_id) 
FROM sales.orders
group by order_status

-- what is the highest amount in each order                                                                                    status

select 
    order_status,
    max(total_amount) 
FROM sales.orders
group by order_status

-- what is the second highest amount for each order-status

with filterd_customers AS (
    select 
        full_name,join_date 
    from customers.customers
    limit 10    
),
ranked_customer as (
    SELECT
        *,
        row_number() OVER(order by join_date) as rnk_asc
    from filterd_customers
)
select * from ranked_customer 
where rnk_asc=2


-- Give seat number to employees alphabetically
select
* 
FROM
"stores"."employees"


select 
emp_name,
row_number() over(order by emp_name) as seat_no
FROM
stores.employees

-- number stores within each region
SELECT 
* 
FROM
stores.stores

select 
    store_name,region,
    row_number() over(partition by region order by store_name) as store_no
FROM stores.stores


-- Rank products within each category by price
SELECT
* 
from 
products.products

select 
prod_name,
category,
price,
row_number() over(partition by category order by price) as category_price
from products.products

