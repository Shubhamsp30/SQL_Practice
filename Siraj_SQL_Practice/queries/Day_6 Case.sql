CASE
   when condition1 then result1
   when condition2 then result2
   ELSE result3 
END
-- categorise customer on the basic of their sales
total_amount>100000=>'Excellent'
total_amount>50000=>'Good'
total_amount>25000=>'Average'
total_amount>10000=>'Bad'
other 'Very Bad'


select 
    total_amount,
    CASE
        when total_amount>100000 then 'Excellent'
        when total_amount>50000 then 'Good'
        when total_amount>25000 then 'average'
        when total_amount>10000 then 'Bad'
        else 'very bad'
    END as customer_category
from 
"sales"."orders"


-- Count of each category
select 
    total_amount,
    CASE
        when total_amount>100000 then 'Excellent'
        when total_amount>50000 then 'Good'
        when total_amount>25000 then 'average'
        when total_amount>10000 then 'Bad'
        else 'very bad'
    END as customer_category
from 
SELECT
CASE
        when total_amount>100000 then 'Excellent'
        when total_amount>50000 then 'Good'
        when total_amount>25000 then 'average'
        when total_amount>10000 then 'Bad'
        else 'very bad'
    END as customer_category,
    count(*)
from 
"sales"."orders"
GROUP BY
customer_category


categorise product as premium,mid_range,budget

SELECT
    prod_name,
    price,
    case
        when price>=50000 then 'premium_product'
        when price BETWEEN 20000 and 49999 then 'mid_range'
        else 'budget_product'
    END as price_category
FROM
    "products"."products"


SELECT
*,
("order_item".quantity * Unit_price)-((discount/100)*("Order_items".quantity * Unit_price))
FROM
"sales"."order_items"


-- categories custome based on city type
set search_path to customers
select 
    full_name,
    city,
    case
        when city in ('Mumbai','Delhi','Bengaluru','Hyderbad','Kolkata','Chennai') then 'Metro'
        ELSE 'non metro'
    END as city_type
from 
customers
LIMIT 100

