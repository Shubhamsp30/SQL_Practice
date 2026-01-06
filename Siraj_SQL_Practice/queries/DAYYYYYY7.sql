-- list all orders with customer NAMES
SELECT * FROM"customers"."customers";
SELECT * FROM "sales"."orders"

SELECT 
count(*)
FROM 
sales.orders as o
INNER JOIN
customers.customers as c
on 
o.cust_id=c.cust_id


-- fetch order items with corresponding product name 

SELECT * FROM"products"."products";
SELECT * from "sales"."order_items"

SELECT 
s.*,
p.prod_name
FROM
sales.order_items as s 
LEFT JOIN
products.products as p
ON
p.prod_id=s.prod_id

-- list all customers and their orders (including those without any)
-- list stores and employees(including stores without employees)
SELECT * FROM "stores"."stores";
SELECT * from "stores"."employees"
select 
s.store_id,
s.store_name,
e.emp_id,
e.emp_name
from 
"stores"."stores" as s
left join 
"stores"."employees" as e 
on s.store_id=e.store_id
group by s.store_id,s.store_name,e.emp_id,e.emp_name
order by s.store_id asc;



select 
count(s.store_id),
count(e.emp_id)
from 
"stores"."stores" as s
left join 
"stores"."employees" as e 
on s.store_id=e.store_id
group by s.store_id,e.emp_id;



-- Categories and products(include categories with no products)
select * from "products"."products"
select DISTINCT "products"."category" from "products"."products"
select * from "core"."dim_category"

select * FROM
products.products as p 
right join 
"core"."dim_category" as C
on 
p.category=c.category_name;


-- cities and customers (include missing from either side)
select * from "customers"."customers";
select * from "customers"."addresses";

select 
c.full_name,
a.city
FROM
"customers"."customers" as c
full JOIN
"customers"."addresses" as a
ON
c.cust_id=a.cust_id;

--  Department-wise total sales accross stores
select * FROM"stores"."stores";
select * from "sales"."orders";
SELECT * FROM "stores"."departments";
SELECT * FROM "stores"."employees";


select 
s.store_name,sd.dept_name,sum(so.total_amount) as total_sales
from 
"stores"."stores" as s
inner join 
"stores"."employees" as e 
on s.store_id=e.store_id
JOIN 
"stores"."departments" as sd
on sd.dept_id=e.dept_id
join 
"sales"."orders" as so
on so.store_id=s.store_id
GROUP by s.store_name,sd.dept_name
order by s.store_name,total_sales desc;

