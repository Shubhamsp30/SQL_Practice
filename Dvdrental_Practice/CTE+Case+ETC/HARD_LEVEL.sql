-- ✅ HARD LEVEL (25 Questions) 🔥🔥
-- (Real interview + advanced logic)

-- Show top 3 customers by total payment using CTE

with total_payment as 
(
    select customer_id,sum(amount) as total_payment from payment group by customer_id
)
select * from total_payment order by total_payment desc limit 3


-- Show second highest film length
select * from film 
select DISTINCT * from film order by length desc limit 1 offset 1


-- Show films longer than avg length of their category
select * from film_category;
select * from film;

with avg_length as(
    select fc.category_id,
    avg(f.length) as avg_len 
    from film as f join film_category as fc 
    on f.film_id=fc.film_id
    group by fc.category_id
)
SELECT f.*
FROM film f
JOIN film_category fc
ON f.film_id = fc.film_id
JOIN avg_length a
ON fc.category_id = a.category_id
WHERE f.length > a.avg_len;


-- Show customers who never made any rental (LEFT JOIN)
select * from rental;
select * from customer;
select * from customer as c left join rental as r on c.customer_id=r.customer_id where r.rental_id is null 


-- Show films that are never rented (LEFT JOIN)

select * from film as f left join 
inventory as i on f.film_id=i.film_id left join 
rental as r on i.inventory_id=r.inventory_id 
where r.rental_id is null 


-- Show actors who are not assigned to any film

    select * from actor as a left join 
    film_actor as fa on a.actor_id=fa.actor_id left join
    film as f on fa.film_id=f.film_id
    where fa.actor_id is NULL 

-- Show customers whose total payment > overall avg payment

select customer_id,sum(amount) as total from payment
group by customer_id
having sum(amount)>(
    select avg(total) 
    from(select customer_id,sum(amount) as total from payment GROUP by customer_id)
    )


-- Show customer with max number of rentals using CTE
with rent as 
(   select customer_id, count(rental_id) as num_rent from rental
    group by customer_id 
)
select * from rent 
order by num_rent DESC
limit 1

with rent as 
(   select customer_id, count(rental_id) as num_rent from rental
    group by customer_id 
)
select * from rent 
where num_rent=(SELECT max(num_rent)from rent)


-- Show films rented more than avg rental count
SELECT f.film_id,
       f.title,
       COUNT(r.rental_id) AS rental_count
FROM film f
JOIN inventory i
ON f.film_id = i.film_id
JOIN rental r
ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
HAVING COUNT(r.rental_id) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(r2.rental_id) AS cnt
        FROM inventory i2
        JOIN rental r2
        ON i2.inventory_id = r2.inventory_id
        GROUP BY i2.film_id
    ) t
);


-- Show customers with payments in last month
SELECT DISTINCT customer_id
FROM payment
WHERE payment_date >= CURRENT_DATE - INTERVAL '1 month';


-- Show customers whose payment > any payment of customer_id = 5
select * from payment
select distinct customer_id from payment 
where amount>any(select amount from payment where customer_id=5)


-- Show duplicate payment records
SELECT customer_id,
       staff_id,
       amount,
       payment_date,
       COUNT(*) AS cnt
FROM payment
GROUP BY customer_id, staff_id, amount, payment_date
HAVING COUNT(*) > 1;


-- Show films not present in inventory
select * from film;
select * from inventory;
select * from film as f left join inventory as i on f.film_id=i.film_id where i.film_id is null 

-- Show customer with max payment per store (PARTITION logic allowed)
WITH customer_payment AS (
    SELECT c.customer_id,
           c.store_id,
           SUM(p.amount) AS total_payment
    FROM customer c
    JOIN payment p
    ON c.customer_id = p.customer_id
    GROUP BY c.customer_id, c.store_id
),
ranked AS (
    SELECT *,
           RANK() OVER (PARTITION BY store_id ORDER BY total_payment DESC) AS rnk
    FROM customer_payment
)
SELECT *
FROM ranked
WHERE rnk = 1;


-- Use CASE to categorize customers into 'VIP', 'Regular', 'Low'
SELECT customer_id,
       SUM(amount) AS total_payment,
       CASE
           WHEN SUM(amount) > 200 THEN 'VIP'
           WHEN SUM(amount) BETWEEN 100 AND 200 THEN 'Regular'
           ELSE 'Low'
       END AS customer_type
FROM payment
GROUP BY customer_id;

-- Show films with replacement_cost above avg using subquery

SELECT *
FROM film
WHERE replacement_cost > (
    SELECT AVG(replacement_cost)
    FROM film
);
