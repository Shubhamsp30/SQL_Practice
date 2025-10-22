set search_path to products
SELECT brand,prod_name,price from products
order by brand desc,prod_name;

-- i want to see product with hightest price in each barand

SELECT 
brand,prod_name,price 
from products
order by brand,price desc;


-- fist 10 ROW
select *
from products
limit 10;

-- all the UNIQUE brand
select 
distinct brand 
from products
order by 1
