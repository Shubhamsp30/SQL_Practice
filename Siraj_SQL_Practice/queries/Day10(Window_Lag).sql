-- compare stores profit with previous day
select
    store_id,summary_date,net_profit,
    lag(net_profit) over(partition by store_id order by summary_date) as prev_month_profit,
    net_profit-lag(net_profit,1,0) over(partition by store_id order by summary_date) as change,
    round(((net_profit-lag(net_profit,1,0) over(partition by store_id order by summary_date))/net_profit)*100,2) as percentage_change
from 
finance.revenue_summary


-- flag stores with 3_month continuous loss

select * from 
finance.revenue_summary


with monthly_summary as(
    select 
        store_id,summary_date,
        lag(net_profit,2,0) over(partition by store_id order by summary_date) as prev_second_month_net_profit,
        lag(net_profit,1,0) over(partition by store_id order by summary_date) as prev_month_net_profit,net_profit
    FROM
        finance.revenue_summary
)
select 
*,
CASE
    when net_profit <prev_month_net_profit and prev_month_net_profit<prev_second_month_net_profit then 'Profit drop 3 months'
    else 'Stable'
END as alert
from monthly_summary
