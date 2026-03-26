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
select *from actor;
select * from film;
select * from film_actor;

-- Show customers with payment above overall average


-- Show film category with highest number of films


-- Show customer with highest number of rentals


-- Show films rented more than 10 times


-- Show staff with highest total payment handled


-- Show customers with payments in last 30 days


-- Show films whose rental_rate > avg of their category


-- Show customers who paid more than customer 1


-- Show films with same length as another film


-- Show duplicate payment amounts


-- Show customers who rented more than average rentals


-- Show film with highest rental count


-- Show category with lowest films


-- Show customers who never rented


-- Show films with no inventory


-- Show customers with max payment per store


-- Show payment rank per customer


-- Show films with replacement_cost above avg


-- Show actors who worked in most films