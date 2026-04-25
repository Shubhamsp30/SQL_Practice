-- ✅ MEDIUM LEVEL (20 Questions)

-- 🔥 Logic building starts here


-- Show top 5 customers by total payment (CTE)
with customerss as (
    select customer_id,sum(amount) toatl_payment from payment
    group by customer_id
)
select * from customerss 
order by toatl_payment desc
limit 5

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
select * from film as f where length>(select avg(length)from film where rating=f.rating)

-- Show customers who never made payment (LEFT JOIN)

select * from customer;
select * from payment
select * from customer as c 
left JOIN payment as p on c.customer_id=p.customer_id
where p.customer_id is NULL


-- Show actors not assigned to any film
select * from film;
select * from film_actor;
select * from actor;
SELECT a.*
FROM actor a
LEFT JOIN film_actor fa
ON a.actor_id = fa.actor_id
WHERE fa.actor_id IS NULL;


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

SELECT f.film_id,
       COUNT(r.rental_id) AS rental_count
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id
HAVING COUNT(r.rental_id) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(r2.rental_id) AS cnt
        FROM inventory i2
        JOIN rental r2 ON i2.inventory_id = r2.inventory_id
        GROUP BY i2.film_id
    ) t
);


-- Show customers categorized using CASE → VIP / Regular / Low
select * from customer
select * from payment
select customer_id,sum(amount) as total 
from payment group by customer_id order by total desc

SELECT customer_id,
       SUM(amount) AS total_payment,
       CASE
           WHEN SUM(amount) < 60 THEN 'Low'
           WHEN SUM(amount) BETWEEN 60 AND 150 THEN 'Regular'
           ELSE 'VIP'
       END AS category
FROM payment
GROUP BY customer_id;

-- Show films categorized using CASE → Long / Medium / Short
select * from film 

select *,length,
CASE 
    WHEN length < 65 THEN 'Short'
    WHEN length BETWEEN 65 AND 140 THEN 'Medium'
    ELSE 'Long'
END
from film

-- Show customers whose total payment between 100 and 200
select customer_id,sum(amount) as total_payment 
from payment group by customer_id 
having sum(amount) between 100 and 200 

