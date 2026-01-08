--Rank stores within each region by total sales
select 
* 
from
stores.stores

-- partition by =region
-- order by = total sales

select * FROM finance.revenue_summary;
select * from stores.stores

select
    s.store_id,
    s.store_name,
    s.region,
    sum(fs.total_sales) as total_sales,
    rank() over(partition by s.region order by sum(fs.total_sales) desc) as sales_rnk
from 
    finance.revenue_summary as fs
join
    stores.stores as s 
on 
    fs.store_id=s.store_id
group by s.region,s.store_name,s.store_id

