-- ✅ MEDIUM LEVEL (20 Questions)

-- 🔥 Logic building starts here


-- Show top 5 customers by total payment (CTE)
with customerss as (
    select customer_id,sum(amount) toatl_payment from payment
    group by customer_id
    order by toatl_payment desc
)
select * from customerss limit 5

-- Show second highest payment using subquery
SELECT *
FROM payment
WHERE amount = (
    SELECT MAX(amount)
    FROM payment
    WHERE amount < (
        SELECT MAX(amount)
        FROM payment
    )
)limit 1

-- Show films longer than avg length per rating
select * from film where length>(select avg(length)from film)

-- Show customers who never made payment (LEFT JOIN)
select * from customer;
select * from payment
select * from customer as c left JOIN payment as p on c.customer_id=p.customer_id where p.customer_id is NULL


-- Show actors not assigned to any film
select * from film;
select * from film_actor;
select * from actor;
select * from film as f left join film_actor as fa on f.film_id=fa.film_id left join actor as a 

-- Show customers whose payment > overall avg payment
select * from payment;

select customer_id,sum(amount) as total_payment from payment 
group by customer_id having sum(amount)>
(select avg(total)from
(select sum(amount) as total from payment GROUP by customer_id))

-- Show category with highest number of films
select * from film;
select * from film_category;
select * from category

select c.name,count(fc.category_id) as number_of_film from film as f 
left join film_category as fc on f.film_id=fc.film_id 
left join category as c on fc.category_id=c.category_id 
group by c.NAME
order by number_of_film desc 

-- Show films rented more than average rental count
select * from film; 
select avg(rental_rate)from film; 
select * from film where rental_rate>(select avg(rental_rate)from film)


-- Show customers categorized using CASE → VIP / Regular / Low
select * from customer
select * from payment
select customer_id,sum(amount) as total from payment group by customer_id order by total desc

select customer_id,sum(amount)as total_payment,
case
    when sum(amount)<60 then 'Low'
    when sum(amount)>60 and sum(amount)<150 then'Regular'
    else 'VIP'
    end 
from payment  
GROUP by customer_id

-- Show films categorized using CASE → Long / Medium / Short
select * from film 

select *,length,
case 
    when length<=65 then 'short'
    when length>=65 and length<=140 then 'Medium'
    else 'Long'
    END
from film

-- Show customers whose total payment between 100 and 200
select customer_id,sum(amount) as total_payment from payment group by customer_id having sum(amount) between 100 and 200 

