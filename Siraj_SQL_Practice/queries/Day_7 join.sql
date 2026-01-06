-- when we are combining two or more table horizontaly using some common key that is joins 
-- when we are combining two or more table Vertically using some common key that is unions

-- Self JOIN=on same table 
--     INNER Join=Returns rows with matching keys in both tables 
--     OUTER JOIN=RETURNS all rows when there a match in either table 
--     RIGHT JOIN=RETURNS all rows from right table + matching rows from RIGHT
--     LEFT JOIN=RETURNS all rows from LEFT table + matching rows from LEFT
--     CROSS JOIN=Cartesian product all combinations of rows 
--     multi-table=joining more than two tables together 
--     join order & Optimization=impacts performance- filter early, join later 

-- List all the orders with cust_name;
select * from customers.customers
SELECT * from "sales"."orders"



-- INNER JOIN
SELECT 
count(*) as inner_join 
from
    "sales"."orders" as o 
INNER JOIN
    "customers"."customers" as c 
ON
o.cust_id=c.cust_id;

-- LEFT JOIN
SELECT 
count(*) as left_join
from
    "sales"."orders" as o 
LEFT JOIN
    "customers"."customers" as c 
ON
o.cust_id=c.cust_id;

-- RIGHT JOIN
SELECT 
count(*) as right_join
from
    "sales"."orders" as o 
RIGHT JOIN
    "customers"."customers" as c 
ON
o.cust_id!=c.cust_id;

-- where Null present
SELECT 
count(*) as right_join
from
    "sales"."orders" as o 
FULL JOIN
    "customers"."customers" as c 
ON
    o.cust_id=c.cust_id
WHERE
    o.order_id is NULL;


-- Fetch order items with corresponding product NAME
SELECT * from "sales"."order_items";
SELECT * from "products"."products";

