select * from "sales"."orders"

select 
sum(total_amount) as total_revenue
FROM"sales"."orders"

-- Total revenue order status wise
SELECT
order_status, sum(total_amount) 
from "sales"."orders"
group by  order_status

SELECT
sum(total_amount) 
from 
sales.orders
WHERE 
order.order_status='Delivered';


