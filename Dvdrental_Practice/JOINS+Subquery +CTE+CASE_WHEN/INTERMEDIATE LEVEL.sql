-- ✅ INTERMEDIATE LEVEL (15 Questions)


-- Show customer name with total payment (JOIN + GROUP)
select * from payment;
select * from customer
select c.last_name,sum(p.amount) as total_payment
from payment as p join customer as c on p.customer_id=c.customer_id 
GROUP by c.last_name


-- Show category name with number of films
select * from film_category;
select * from category;

select c.category_id,c.name,count(fc.film_id) as num_of_films from 
film_category as fc join category as c on fc.category_id=c.category_id 
group by c.name,c.category_id
order by num_of_films desc


-- Show customers who made more than 5 payments
select * from payment 
SELECT c.customer_id,
       c.first_name,
       COUNT(p.payment_id) AS payment_count
FROM customer c
JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name
HAVING COUNT(p.payment_id) > 5;


-- Show customers with CASE → 'High Spender' if total > 150
select customer_id,sum(amount) as total from payment group by customer_id order by total desc

select customer_id,sum(amount) as total,
case 
    when sum(amount)<75 then 'Low spender'
    when sum(amount)>75 and sum(amount)<150 then 'Medium spender'
    else 'High Spender'
END
from payment
group by customer_id


-- Show films where rental_rate > avg rental_rate (subquery)
select * from film where rental_rate>(select avg(rental_rate)from film)

-- Show payments greater than avg payment per customer
select * from payment
select * from payment as p where amount>(select avg(amount) from payment where customer_id=p.customer_id)

-- Show customers whose total payment is greater than customer_id = 10
select customer_id from payment group by customer_id having sum(amount)>(select sum(amount) from payment where customer_id=10)


