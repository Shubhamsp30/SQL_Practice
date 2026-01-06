WITH cte_order_items as (
    SELECT
        *,
        CASE
            when discount>5 then round(discount/100,2)
            else NULL
        END as discount_apply
    FROM
    "sales"."order_items"
    LIMIT 
    1000
)
select
*,
COALESCE(discount_apply,-1) 
from 
cte_order_items

NULLIF

WITH cte_order_items as (
    SELECT
        *,
        CASE
            when discount>5 then round(discount/100,2)
            else NULL
        END as discount_apply
    FROM
    "sales"."order_items"
    LIMIT 
    1000
)
select
*,
NULLIF(discount_apply,0.10) 
from 
cte_order_items

COALESCE=> replacing null with something
nullif=> replacing something with NULL

select 
*, Unit_price/NULLIF(discount,0)
from "sales"."order_items"