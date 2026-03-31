-- ✅ HARD LEVEL (25 Questions)
-- (Real interview level 🔥)

-- Show top 5 customers by total payment
select * from payment
select customer_id,sum(amount) as total_payment from payment group by customer_id order by total_payment desc limit 5

-- Show second highest payment
select DISTINCT amount from payment order by amount desc limit 1 offset 1

-- Show films longer than average in their rating
select * from film
SELECT *
FROM film f
WHERE length > (
    SELECT AVG(length)
    FROM film
    WHERE rating = f.rating
);

-- Show customers who never made payment
select * from payment;
select * from customer;
SELECT * FROM 
customer c LEFT JOIN payment p
ON c.customer_id = p.customer_id
WHERE p.customer_id IS NULL;

SELECT *
FROM customer
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM payment
);

-- Show films that are not rented
select * from film;
select * from inventory;
select * from rental;
select * from film as f LEFT join inventory as i on f.film_id=i.film_id left join rental as r on i.inventory_id=r.inventory_id where r.rental_id is null ;

    -- Show actors not in any film
select * from film_actor;
select *from actor;
select * from film;
select * from actor as a left join film_actor as fa on a.actor_id=fa.actor_id where fa.actor_id is null 
select * from actor as a where not exists(select * from film_actor as fa where fa.actor_id=a.actor_id) 

-- Show customers with payment above overall average
select * from payment;
select *from customer;
select customer_id,sum(amount)from payment group by customer_id having sum(amount)>(select avg(total)from(select sum(amount)as total from payment GROUP by customer_id))

-- Show film category with highest number of films
select * from film;
select * from film_category;
SELECT * from category;
select fc.category_id,c.name,count(film_id) films from film_category as fc join category as c on fc.category_id=c.category_id group by fc.category_id,c.name order  by films desc limit 1

-- Show customer with highest number of rentals
select * from customer;
select * from rental;
select c.first_name,r.customer_id,count(r.rental_id) as highest_rental from rental as r join customer as c on c.customer_id=r.customer_id group by r. customer_id,c.first_name order by highest_rental desc limit 1

-- Show films rented more than 10 times
select * from inventory;
select * from rental;
SELECT f.film_id,
       f.title,
       COUNT(r.rental_id) AS rent_count
FROM film f
JOIN inventory i
ON f.film_id = i.film_id
JOIN rental r
ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
HAVING COUNT(r.rental_id) > 10
ORDER BY rent_count DESC;


-- Show staff with highest total payment handled
select * from payment;
select * from staff;
select staff_id,sum(amount) as total_payment from payment group by staff_id ORDER by total_payment desc limit 1 

select count(payment_id) as total_payment from payment GROUP by staff_id order by total_payment DESC limit 1

-- Show customers with payments in last 30 days
SELECT *
FROM payment
WHERE payment_date >= CURRENT_DATE - INTERVAL '30 days';

-- Show films whose rental_rate > avg of their category
select * from film_category;
select * from film;

SELECT * FROM film f
JOIN film_category fc
ON f.film_id = fc.film_id 
where rental_rate>( select avg(f.rental_rate) as avg_rental from 
film as f join film_category as fc on f.film_id=fc.film_id )


-- Show films with same length as another film


-- Show duplicate payment amounts


-- Show customers who rented more than average rentals


-- Show film with highest rental count


-- Show category with lowest films


-- Show customers who never rented
select * from customer;
select * from rental



-- Show films with no inventory
select * from inventory;
select * from film;
select * from film as f left join inventory as i on f.film_id=i.film_id where i.film_id is null 

-- Show customers with max payment per store
select * from store
select * from payment;
select * from customer


-- Show payment rank per customer
select * from payment;


-- Show films with replacement_cost above avg
select * from film
select DISTINCT replacement_cost from film
select avg(replacement_cost) as avg from film
select * from film where replacement_cost>(select avg(replacement_cost) as avg from film)

-- Show actors who worked in most films
SELECT a.actor_id,
       a.first_name,
       COUNT(fa.film_id) AS film_count
FROM actor a
JOIN film_actor fa
ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name
ORDER BY film_count DESC
LIMIT 1;