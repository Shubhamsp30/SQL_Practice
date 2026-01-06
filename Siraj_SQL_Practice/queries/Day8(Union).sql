select 
state,city 
from "customers"."customers"
union ALL
select 
state,city
from "customers"."addresses"

-- give me unique combination of state and city from address and customer

select state,city from"customers"."addresses"
UNION
select state,city from "customers"."customers"

-- list all products with order/return status 
select DISTINCT prod_id ,'ordered' as status from "sales"."order_items"
union 
select DISTINCT prod_id,'returned'as status from "sales"."returns"


-- Meger active buyers and reviwers for marketing insinghts 
select DISTINCT cust_id,'Acive Buyer' as cust_type from sales.orders
union 
select DISTINCT cust_id,'Acive Reviewer' as cust_type from customers.reviews