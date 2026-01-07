-- find total orders per customer using a CTE 
select 
* 
from "customers"."customers";

select 
* 
from "sales"."orders";



with customer_order as (
    select 
    cust_id,
    count(order_id) as total_orders
    from sales.orders
    group by 
    cust_id
    order by total_orders desc

)

select * from customer_order


-- Top 3 stores by revenue
select 
store_id,
sum(total_amount) as revenue
FROM
sales.orders
group by store_id
order by revenue DESC
limit 3 


-- with CTE

with store_revenue as (
    select 
        store_id,
        sum(total_amount) as revenue
    FROM
        sales.orders
    group by store_id
    order by revenue DESC
    limit 3 
)
select * from store_revenue


