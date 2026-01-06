-- Total No of Orders
select 
    count(*)
from 
"sales"."orders"

-- Count(*) and Count(id)
-- orders
-- id=1,2,3,4,5=count(*)5=No of rows avaliable in the table
-- amount=52,55,35,62,Null=Count(id)4

-- How many customers have provide a Age
select count(*) from "customers"."customers"
SELECT 
count(age)
from 
"customers"."customers"

UPDATE customers.customers
set age =0
where
 age is NULL

set search_path TO customers;
SELECT * from customers
ALTER TABLE customers ALTER COLUMN age type INTEGER, 
ALTER COLUMN age SET NOT NULL;
ROLLBACK;

select * from "customers"."customers"


-- Category of product 
select * from "products"."products"
select 
count(category)
from "products"."products"

-- Unique Category
SELECT
count(DISTINCT category) as no_of_unique_category,'
sp' as my_name,
CURRENT_DATE as today_date,
CURRENT_TIME as Current_time
from 
"products"."products"


-- Count(*) RETURNS Count of all avaliable records in the table(INCLUDING null records)
-- count(col_name) RETURNS count of all non null VALUES
-- count(DISTINCT) RETURNS count of DISTINCT COLUMN values



select * from customers.customers